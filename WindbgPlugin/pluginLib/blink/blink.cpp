
#include "config.h"
#pragma warning(push, 0)
#include "lldb/Core/Mangled.h"
#pragma warning(pop)
#include <algorithm>
#include <stdio.h>
#include <string>
#include <vector>
#include "Logger.h"

#include "LoadDllFromMemory.h"
#include "utils.h"
#include <assert.h>
#include <set>

#include "Platform.h"
#include "blink.h"
#include "coff_reader.hpp"
#include <filesystem>

#include <ctime>
#include <iostream>
Blink g_blink;

std::string getSymbolName(const IMAGE_SYMBOL &symbol,
                          const std::vector<char> &strings) {
  // Get symbol name from string table if it is a long name
  std::string symbol_name;
  if (symbol.N.Name.Short == 0) {
    assert(symbol.N.Name.Long < strings.size());

    symbol_name = strings.data() + symbol.N.Name.Long;
  } else {
    const auto short_name = reinterpret_cast<const char *>(symbol.N.ShortName);

    symbol_name =
        std::string(short_name, strnlen(short_name, IMAGE_SIZEOF_SHORT_NAME));
  }
  return symbol_name;
}
Result Blink::initDllsIfNeeded()const {
  std::scoped_lock mutex(*m_mutex);
  if (m_isInitDlls) {
    return Result();
  }
  std::vector<std::string> modulesToFind;
  modulesToFind.insert(modulesToFind.end(), g_config.modulesNames.begin(),
                       g_config.modulesNames.end());
  modulesToFind.push_back(g_config.executableModuleName);
  auto modules = g_platform->getModules();
  for (const auto &moduleName : modulesToFind) {
    auto foundModule =
        std::find_if(modules.begin(), modules.end(),
                     [&](std::shared_ptr<LoadedDll> currentModule) {
                       return lowerString(currentModule->getName())
                           ._Starts_with(lowerString(moduleName));
                     });
    if (foundModule == modules.end()) {
      return Result("failed to find module " + moduleName +
                    "\n please make sure you used .reload to load all modules");
    }
    if (moduleName != g_config.executableModuleName) {
      m_orderinaryDlls.push_back(*foundModule);
    } else {
      m_dllToChange = *foundModule;
    }
  }
  m_isInitDlls = true;
  return Result();
}

std::string Blink::getUniqueTempFilePath(const std::string &filePath,
                                         const std::string &prefix) {
  auto fileName = std::filesystem::path(filePath).filename();
  size_t i = 0;
  std::string wantedFilePath;
  while (true) {
    wantedFilePath =
        m_tempDirPath + "\\" + prefix + "__" + std::to_string(i) + "__" +
        std::to_string((size_t)std::hash<std::string>{}(filePath)) + "__" +
        fileName.string();
    if (!std::filesystem::exists(wantedFilePath)) {
      break;
    }
    i++;
  }
  return wantedFilePath;
}

std::shared_ptr<LoadedDll> Blink::getDllToChange() const {
  initDllsIfNeeded();
  return m_dllToChange;
}

void Blink::notifyDynamicModuleLoaded(std::shared_ptr<LoadedDll> module) {
  for (const auto &operation : m_onLoadModule) {
    operation(module);
  }
}

void Blink::notifyDynamicModuleUnloaded(std::shared_ptr<LoadedDll> module) {
  for (const auto &operation : m_onUnloadModule) {
    operation(module);
  }
}

void Blink::resetDllToChange() {
  for (const auto &dll : getDynamicDlls()) {
    notifyDynamicModuleUnloaded(dll);
  }
  m_dynamicDlls.clear();
  m_dllToChange.reset();
  m_originalFileToNewFile.clear();
}

std::vector<std::shared_ptr<LoadedDll>> Blink::getAllDlls() const {
  auto dlls = getDynamicDlls();
  auto ordinaryDlls = getOrdinaryDlls();
  dlls.insert(dlls.end(), ordinaryDlls.begin(), ordinaryDlls.end());
  if (m_dllToChange) {
    dlls.push_back(m_dllToChange);
  }
  return dlls;
}

std::vector<std::shared_ptr<LoadedDll>> Blink::getOrdinaryDlls() const {
  initDllsIfNeeded();
  return m_orderinaryDlls;
}

std::vector<std::unordered_map<std::string, Symbol>>
Blink::getSymbolsToChangeInOldObjects() {
  std::vector<std::shared_ptr<LoadedDll>> modules;
  modules.push_back(m_dllToChange);
  modules.insert(modules.end(), m_dynamicDlls.begin(), m_dynamicDlls.end());
  std::vector<std::unordered_map<std::string, Symbol>> result;
  std::unordered_map<std::string, Symbol> allSymbols;
  for (const auto &module : modules) {
    for (const auto &symbol : module->getSymbols()) {
      allSymbols[symbol.first] = symbol.second;
    }
  }
  for (const auto &module : modules) {
    std::unordered_map<std::string, Symbol> currentModuleSymbols;
    for (const auto &symbol : module->getSymbols()) {
      if (!symbol.first._Starts_with("__imp_") &&
          !symbol.first._Starts_with("__my_imp_")) {
        continue;
      }
      auto realSymbolName = getRealSymbolName(symbol.second.m_symbolName);
      if (allSymbols.find(realSymbolName) != allSymbols.end() &&
          allSymbols[realSymbolName].m_isConst) {
        currentModuleSymbols[symbol.first] = symbol.second;
      } else if (symbol.first._Starts_with("__my_imp_")) {
        currentModuleSymbols[symbol.first] = symbol.second;
      }
    }
    result.push_back(currentModuleSymbols);
  }
  return result;
}

Result Blink::link(const LinkCommandRequest *request,
                   const std::vector<char> &objFileData) {
  auto header = *(IMAGE_FILE_HEADER *)objFileData.data();
  auto newObjFileData = objFileData;

  auto symbolsToUpdateWith = getSymbolsToUpdateWith();

  std::vector<IMAGE_SECTION_HEADER *> sections;
  for (int i = 0; i < header.NumberOfSections; i++) {
    char *sectionLocation = newObjFileData.data() + sizeof(IMAGE_FILE_HEADER);
    sectionLocation += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    sections.push_back((IMAGE_SECTION_HEADER *)sectionLocation);
  }

  std::vector<IMAGE_SYMBOL> symbols(header.NumberOfSymbols);
  std::set<std::string> symbolsToNull;
  memcpy(symbols.data(), newObjFileData.data() + header.PointerToSymbolTable,
         header.NumberOfSymbols * sizeof(IMAGE_SYMBOL));

  auto c = header.PointerToSymbolTable +
           header.NumberOfSymbols * sizeof(IMAGE_SYMBOL);
  // The string table follows after the symbol table and is usually at the end
  // of the file
  const DWORD string_table_size =
      static_cast<DWORD>(newObjFileData.size() - (c));

  std::vector<char> strings(string_table_size);
  memcpy(strings.data(),
         newObjFileData.data() + header.PointerToSymbolTable +
             header.NumberOfSymbols * sizeof(IMAGE_SYMBOL),
         string_table_size);

  // Resolve internal and external currentModuleSymbols
  std::vector<BYTE *> local_symbol_addresses(header.NumberOfSymbols);
  std::vector<std::pair<BYTE *, const BYTE *>> image_function_relocations;

  // Perform relocation on each section
  for (auto section : sections) {
    const auto section_relocation_table =
        reinterpret_cast<const IMAGE_RELOCATION *>(
            newObjFileData.data() + section->PointerToRelocations);
    std::vector<IMAGE_RELOCATION> newRelocationsTable;
    for (unsigned int k = 0; k < section->NumberOfRelocations; ++k) {
      const IMAGE_RELOCATION &relocation = section_relocation_table[k];
      auto &symbol = symbols.at(relocation.SymbolTableIndex);
      auto symbolName = getSymbolName(symbol, strings);

      if (symbolName._Starts_with("__imp_") ||
          symbolName._Starts_with("__jmp_")) {
        std::string realSymbolName = getRealSymbolName(symbolName);
        bool isExternal = true;
        for (size_t i = 0; i < symbols.size(); i++) {
          auto baseNameSymbol = symbols.at(i);
          auto baseName = getSymbolName(baseNameSymbol, strings);
          if ("__imp_" + baseName == getSymbolName(symbol, strings) ||
              "__jmp_" + baseName == getSymbolName(symbol, strings)) {
            if (!(baseNameSymbol.StorageClass == IMAGE_SYM_CLASS_EXTERNAL &&
                  baseNameSymbol.SectionNumber == IMAGE_SYM_UNDEFINED)) {
              isExternal = false;
            }
            break;
          }
        }
        if (isExternal) {
          if (symbolsToUpdateWith.find(realSymbolName) ==
              symbolsToUpdateWith.end()) {

            return Result("failed to find symbol " + realSymbolName + "\n" +
                          "demangled: " +
                          std::string(lldb_private::Mangled(realSymbolName)
                                          .GetDemangledName()
                                          .AsCString()));
          }
          symbolsToNull.insert(
              getSymbolName(symbols.at(relocation.SymbolTableIndex), strings));
        }
      }
    }
  }

  std::string defData = "_DATA SEGMENT\n";
  for (auto symbolName : symbolsToNull) {
    if (symbolName._Starts_with("__imp")) {
      defData += "EXTERNDEF " + symbolName + ":QWORD\n";
      defData += symbolName + "	DQ	0 \n";
    }
  }
  defData += "_DATA ENDS\n";

  defData += "_TEXT SEGMENT\n";
  for (auto symbolName : symbolsToNull) {
    if (symbolName._Starts_with("__jmp_")) {
      defData +=
          "EXTERNDEF __my_imp_" + getRealSymbolName(symbolName) + ":QWORD\n";
      defData +=
          "__my_imp_" + getRealSymbolName(symbolName) + "	DQ	0 \n";
      defData += "\n" + symbolName + " PROC\n" + "		jmp " +
                 "[__my_imp_" + getRealSymbolName(symbolName) + "]\n" +
                 symbolName + " ENDP\n\n";
    }
  }
  defData += "_TEXT ENDS\nEND";
  auto asmFilePath = getUniqueTempFilePath("a.asm");
  static_cast<void>(writeToFile(
      asmFilePath, std::vector<char>{defData.begin(), defData.end()}));
  auto objFilePath = getUniqueTempFilePath("cpp.obj");
  static_cast<void>(writeToFile(objFilePath, objFileData));
  auto asmFileObjFilePath = getUniqueTempFilePath("asm.obj");
  std::string processOutput;
  auto asmCommand = request->masmpath() + " /c /nologo /Zi /Fo" +
                    asmFileObjFilePath + " /W3 /errorReport:prompt  /Ta" +
                    asmFilePath;
  if (!createProcess(asmCommand, processOutput)) {
    return Result("failed to create process " + asmCommand + "\n" +
                  processOutput);
  }

  std::string ldLinkPath = request->ldpath();
  auto dllPath = getUniqueTempFilePath(request->filepath()+".dll");
  auto ldProcessCommand =
      ldLinkPath + " " + asmFileObjFilePath + " " + objFilePath +
      R"( /dll /debug:full /force:unresolved )" + request->linkerflags() +
      " /NODEFAULTLIB /noentry /out:" + dllPath;
  writeLog("starting to link " + ldProcessCommand);
  if (!createProcess(ldProcessCommand, processOutput)) {
    return Result("failed to create process " + ldProcessCommand + "\n" +
                  processOutput);
  }
  writeLog("link finished");

  std::unordered_map<std::string, Symbol> neededSymbols{};
  for (const auto &symbolName : symbolsToNull) {
    std::string realSymbolName = getRealSymbolName(symbolName);
    neededSymbols[realSymbolName] =
        symbolsToUpdateWith.at(realSymbolName);
  }
  auto dllData = readFile(dllPath);
  if (!dllData) {
    return Result("failed to read " + dllPath);
  }

  writeLog("loading dll to memory");

  std::shared_ptr<LoadedDll> loadedDll;
  auto result =
      loadDllFromMemory(std::filesystem::path(dllPath).filename().string(),
                        *dllData, neededSymbols, loadedDll);
  if (!result.m_success) {
    return result;
  }
  writeLog("finished loading dll to memory");
  writeLog("updating previous modules with new symbols");
  auto newSymbols = loadedDll->getSymbols();
  for (const auto &symbolsInModule : getSymbolsToChangeInOldObjects()) {
    for (const auto &oldSymbol : symbolsInModule) {
      auto realOldSymbolName = getRealSymbolName(oldSymbol.first);
      if (newSymbols.find(realOldSymbolName) !=
              newSymbols.end() &&
          symbolsToNull.find(realOldSymbolName) == symbolsToNull.end()) {
        auto symbolAddrInNewObj = newSymbols.at(realOldSymbolName);
        g_platform->writeMemory(oldSymbol.second.m_address, &symbolAddrInNewObj.m_address,
                                sizeof(symbolAddrInNewObj.m_address));
      }
    }
  }
  m_dynamicDlls.push_back(loadedDll);
  notifyDynamicModuleLoaded(loadedDll);
  return Result();
}

Result Blink::fixRelocations(std::vector<char> &localLoadedImage,
                             uint64_t delta) {
  auto imageDosHeader = (IMAGE_DOS_HEADER *)localLoadedImage.data();
  auto imageNtHeaders =
      (IMAGE_NT_HEADERS *)(localLoadedImage.data() + imageDosHeader->e_lfanew);
  auto relocDirectory = imageNtHeaders->OptionalHeader
                            .DataDirectory[IMAGE_DIRECTORY_ENTRY_BASERELOC];

  auto relocation = (PIMAGE_BASE_RELOCATION)(localLoadedImage.data() +
                                             relocDirectory.VirtualAddress);

  for (int j = 0; relocation->VirtualAddress > 0; j++) {
    if ((char *)relocation - localLoadedImage.data() >=
        relocDirectory.VirtualAddress + relocDirectory.Size) {
      return Result();
    }
    unsigned short *relInfo =
        (unsigned short *)((char *)relocation + sizeof(IMAGE_BASE_RELOCATION));
    DWORD i;
    char *dest = localLoadedImage.data() + relocation->VirtualAddress;
    for (i = 0;
         relocation->SizeOfBlock >= sizeof(IMAGE_BASE_RELOCATION) &&
         i < ((relocation->SizeOfBlock - sizeof(IMAGE_BASE_RELOCATION)) / 2);
         i++, relInfo++) {
      // the upper 4 bits define the type of relocation
      int type = *relInfo >> 12;
      // the lower 12 bits define the offset
      int offset = *relInfo & 0xfff;
      switch (type) {
      case IMAGE_REL_BASED_ABSOLUTE:
        // skip relocation
        break;

      case IMAGE_REL_BASED_HIGHLOW:
        // change complete 32 bit address
        {
          DWORD *patchAddrHL = (DWORD *)(dest + offset);
          *patchAddrHL += (DWORD)delta;
          break;
        }
      case IMAGE_REL_BASED_HIGH: {
        //
        // High - (16-bits) relocate the high half of an address.
        //
        ULONGLONG *patchAddr64 = (ULONGLONG *)(dest + offset);
        LONG Temp = *(PUSHORT)patchAddr64 << 16;
        Temp += (ULONG)delta;
        *(PUSHORT)patchAddr64 = (USHORT)(Temp >> 16);
        break;
      }

#ifdef _WIN64
      case IMAGE_REL_BASED_DIR64: {
        ULONGLONG *patchAddr64 = (ULONGLONG *)(dest + offset);
        *patchAddr64 += (ULONGLONG)delta;
      } break;
#endif

      default:
        return Result("unsupported relocation");
        break;
      }
    }

    // advance to next relocation block
    relocation =
        (PIMAGE_BASE_RELOCATION)((char *)relocation + relocation->SizeOfBlock);
  }
  return Result();
}

Result Blink::loadDllFromMemory(
    const std::string &dllName, const std::vector<char> &dllData,
    const std::unordered_map<std::string, Symbol> &symbolsToImport,
    std::shared_ptr<LoadedDll> &loadedDll) {
  Result result;
  auto imageDosHeader = (IMAGE_DOS_HEADER *)dllData.data();
  auto imageNtHeaders =
      (IMAGE_NT_HEADERS *)(dllData.data() + imageDosHeader->e_lfanew);
  auto imageSize = imageNtHeaders->OptionalHeader.SizeOfImage;
  std::vector<char> localLoadedImage(
      std::max((size_t)imageSize, dllData.size()));
  memcpy(localLoadedImage.data(), dllData.data(), dllData.size());
  size_t maxLoadableSectionAddr = 0;
  for (int i = 0; i < imageNtHeaders->FileHeader.NumberOfSections; i++) {
    auto sectionHeaderLocationOffset =
        imageDosHeader->e_lfanew + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
        (DWORD)imageNtHeaders->FileHeader.SizeOfOptionalHeader;
    sectionHeaderLocationOffset += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    auto sectionHeaderLocationInDisk =
        (IMAGE_SECTION_HEADER *)(dllData.data() + sectionHeaderLocationOffset);
    memcpy(localLoadedImage.data() +
               sectionHeaderLocationInDisk->VirtualAddress,
           dllData.data() + sectionHeaderLocationInDisk->PointerToRawData,
           sectionHeaderLocationInDisk->Misc.VirtualSize);
    if (!(sectionHeaderLocationInDisk->Characteristics &
          IMAGE_SCN_MEM_DISCARDABLE)) {
      maxLoadableSectionAddr = sectionHeaderLocationInDisk->VirtualAddress +
                               sectionHeaderLocationInDisk->Misc.VirtualSize;
    }
  }
  localLoadedImage.resize(maxLoadableSectionAddr);
  auto loadedImage = g_platform->allocateMemory(maxLoadableSectionAddr);
  loadedDll = std::make_shared<LoadedDll>(
      dllName, loadedImage, LoadedDll::LoadedDynamically::DYNAMIC);
  result = fixRelocations(localLoadedImage,
                          (char *)loadedImage -
                              (char *)imageNtHeaders->OptionalHeader.ImageBase);
  if (!result.m_success) {
    return result;
  }
  g_platform->writeMemory(loadedImage, localLoadedImage.data(),
                          localLoadedImage.size());
  auto newSymbols = loadedDll->getSymbols();
  auto oldSymbols = g_blink.getSymbolsToUpdateWith();
  for (const auto &symbol : newSymbols) {
    if (!symbol.first._Starts_with("__imp") &&
        !symbol.first._Starts_with("__my_imp")) {
      continue;
    }
    bool shouldChangeSymbol = false;
    auto realSymbolName = getRealSymbolName(symbol.second.m_symbolName);
    if (symbolsToImport.find(realSymbolName) != symbolsToImport.end()) {
      shouldChangeSymbol = true;
    } else if (oldSymbols.find(realSymbolName) != oldSymbols.end()) {
      auto foundedSymbol = oldSymbols.find(realSymbolName);
      bool isFunctionSymbol = symbol.first._Starts_with("__my_imp");
      if (!isFunctionSymbol &&
          !foundedSymbol->second.m_isConst) {
        shouldChangeSymbol = true;
      }
    }
    if (shouldChangeSymbol) {
      if (oldSymbols.find(realSymbolName) != oldSymbols.end()) {
        *(uint64_t *)((char *)symbol.second.m_address - (char *)loadedImage +
                      localLoadedImage.data()) =
            (uint64_t)oldSymbols.find(realSymbolName)->second.m_address;
      }
    }
  }
  g_platform->writeMemory(loadedImage, localLoadedImage.data(),
                          localLoadedImage.size());
  return result;
}

std::string Blink::getRealSymbolName(const std::string &symbolName) {
  std::string realSymbolName = symbolName;
  if (symbolName._Starts_with("__imp_")) {
    realSymbolName = symbolName.substr(std::string("__imp_").size());
  } else if (symbolName._Starts_with("__jmp_")) {
    realSymbolName = symbolName.substr(std::string("__jmp_").size());
  } else if (symbolName._Starts_with("__my_imp_")) {
    realSymbolName = symbolName.substr(std::string("__my_imp_").size());
  }
  return realSymbolName;
}

bool Blink::isJumpSymbol(const std::string &symbol) {
  return symbol._Starts_with("__jmp_");
}

Blink::Blink() {
  m_mutex = std::make_shared<std::mutex>();
  m_originalFileToNewFileMutex = std::make_shared<std::mutex>();

  srand((unsigned)time(NULL));
  std::string tempDir;
  while (true) {
    tempDir = std::filesystem::temp_directory_path().string() +
              std::to_string(rand());
    if (!std::filesystem::exists(tempDir)) {
      break;
    }
  }
  m_tempDirPath = tempDir;
  std::filesystem::create_directory(m_tempDirPath);
}

Result Blink::link(const LinkCommandRequest *request) {
  writeLog("blink starting");
  auto result = initDllsIfNeeded();
  if (!result.m_success) {
    return result;
  }
  std::string clangFilePath = request->clangfilepath();
  auto outputFilePath = getUniqueTempFilePath(
      std::filesystem::path(request->filepath()).filename().string() + ".o");
  auto filePath = getUniqueTempFilePath(
      std::filesystem::path(request->filepath()).filename().string());
  writeToFile(filePath, *readFile(request->filepath()));
  std::string processOutput;
  std::string processCommand = clangFilePath + " /Od /Zi /GS- -gdwarf " +
                               request->compilationflags() + " -c " + "\"" +
                               filePath + "\"" + " -o " + outputFilePath;
  writeLog("starting to compile " + processCommand);
  auto workingDir =
      std::filesystem::path(request->filepath()).parent_path().string();
  if (!createProcess(processCommand, processOutput, workingDir)) {
    return Result("failed running process" + processCommand + " \n" +
                  processOutput);
  }
  writeLog("finished compiling successfully");

  const std::vector<std::string> intrinsicsToReplace = {"memset", "memmove",
                                                        "memcpy"};
  std::string objCopyCommand = request->objcopypath() + " " + outputFilePath;
  for (const auto &intrinsic : intrinsicsToReplace) {
    objCopyCommand += " --redefine-sym " + intrinsic + "=__jmp_" + intrinsic;
  }

  if (!createProcess(objCopyCommand, processOutput)) {
    return Result("failed running process" + processCommand + " \n" +
                  objCopyCommand);
  }
  return link(request, outputFilePath);
}

std::vector<std::shared_ptr<LoadedDll>> Blink::getDynamicDlls() const {
  initDllsIfNeeded();
  return m_dynamicDlls;
}

bool Blink::addFilePathToHook(const std::string &filePath,
                              const std::string &fileData) {
  if (!shouldAddFilePathToHook(filePath)) {
    return false;
  }

  std::scoped_lock lock(*m_originalFileToNewFileMutex);
  auto newFilePath = g_blink.getUniqueTempFilePath(filePath, "first");
  (void)writeToFile(newFilePath,
                    std::vector<char>{fileData.begin(), fileData.end()});
  auto absolutePath = std::filesystem::absolute(filePath).string();
  m_originalFileToNewFile[absolutePath] = newFilePath;
  return true;
}

bool Blink::shouldAddFilePathToHook(const std::string &filePath) {
  std::scoped_lock lock(*m_originalFileToNewFileMutex);
  
  initDllsIfNeeded();
  if (!m_dllToChange) {
    return false;
  }
  auto absolutePath = std::filesystem::absolute(filePath).string();
  return m_originalFileToNewFile.find(absolutePath) ==
         m_originalFileToNewFile.end();
}

void *Blink::getSymbol(const std::string &symbolName) {
  auto symbols = getSymbolsToUpdateWith();
  if (symbols.find(symbolName) != symbols.end()) {
    return symbols.find(symbolName)->second.m_address;
  }
  return nullptr;
}

Result Blink::link(const LinkCommandRequest *request,
                   const std::string &newObjPath) {
  // Object file can be a normal COFF or an extended COFF
  auto objFileData = readFile(newObjPath);
  if (!objFileData) {
    return Result("failed to read " + newObjPath);
  }
  return link(request, *objFileData);
}

std::unordered_map<std::string, Symbol> Blink::getSymbolsToUpdateWith() {
  initDllsIfNeeded();
  std::vector<std::shared_ptr<LoadedDll>> modules;
  modules.insert(modules.end(), m_orderinaryDlls.begin(),
                 m_orderinaryDlls.end());
  if (m_dllToChange) {
    modules.push_back(m_dllToChange);
  }
  modules.insert(modules.end(), m_dynamicDlls.begin(), m_dynamicDlls.end());
  std::unordered_map<std::string, Symbol> symbols;
  for (const auto &module : modules) {
    for (const auto &symbol : module->getSymbols()) {

      if (symbols.find(symbol.first) != symbols.end()) {
        if (symbol.second.m_isFunction||
            symbol.second.m_isConst) {
          symbols[symbol.first] = symbol.second;
        }
      }else {
        symbols[symbol.first] = symbol.second;
      }
    }
  }
  return symbols;
}
