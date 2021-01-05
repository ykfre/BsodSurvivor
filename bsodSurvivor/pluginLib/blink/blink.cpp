
#include "config.h"
#pragma warning(push, 0)
#include "lldb/Core/Mangled.h"
#pragma warning(pop)
#include "CreateFileHook.grpc.pb.h"
#include "CreateFileHook.pb.h"
#include "LoadDllFromMemory.h"
#include "Logger.h"
#include "utils.h"
#include <algorithm>
#include <assert.h>
#include <grpc++/channel.h>
#include <grpc++/client_context.h>
#include <grpc++/create_channel.h>
#include <grpc++/security/credentials.h>
#include <set>
#include <stdio.h>
#include <string>
#include <vector>

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
Result Blink::initDllsIfNeeded() const {
  std::scoped_lock mutex(*m_mutex);
  if (m_isInUnload) {
    return Result();
  }
  if (m_dllToChange) {
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
                       if (!g_platform->isUserMode()) {
                         return lowerString(currentModule->getName()) ==
                                lowerString(moduleName);
                       } else {
                         return lowerString(currentModule->getName())
                             ._Starts_with(lowerString(moduleName));
                       }
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
  setInUnload(true);
  for (const auto &dll : getDynamicDlls()) {
    notifyDynamicModuleUnloaded(dll);
  }
  m_dynamicDlls.clear();
  m_dllToChange.reset();
  setInUnload(false);
  resetSavedFiles();
}

void Blink::resetSavedFiles() {
  try {
    std::scoped_lock lock(*m_originalFileToNewFileMutex);

    auto client = getClientForCreateFileHook();
    auto request = CreateFileHook::Empty();
    auto reply = CreateFileHook::Empty();
    grpc::ClientContext context;

    client->ClearPaths(&context, request, &reply);
  } catch (...) {
  }
}

std::vector<std::shared_ptr<LoadedDll>> Blink::getAllDlls() const {
  auto dlls = getOrdinaryDlls();
  if (m_isInUnload) {
    return dlls;
  }
  auto dynamicDlls = getDynamicDlls();
  if (m_dllToChange) {
    dlls.push_back(m_dllToChange);
  }
  dlls.insert(dlls.end(), dynamicDlls.begin(), dynamicDlls.end());
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
  Result result;

  auto symbolsToUpdateWith = getSymbolsToUpdateWith();
  std::set<std::string> symbolsWeShouldUpdateInNewObj;
  result = getSymbolsWeShouldUpdateInNewObj(objFileData, symbolsToUpdateWith,
                                            symbolsWeShouldUpdateInNewObj);
  if (!result.m_success) {
    return result;
  }
  std::string asmFilePath;
  result =
      writeAsmFileWithNeededSymbols(symbolsWeShouldUpdateInNewObj, asmFilePath);
  if (!result.m_success) {
    return result;
  }

  auto asmFileObjFilePath = getUniqueTempFilePath("asm.obj");
  result = createAsmObjFile(request, asmFileObjFilePath, asmFilePath);
  if (!result.m_success) {
    return result;
  }
  auto dllPath = getUniqueTempFilePath(request->filepath() + ".dll");
  auto objFilePath = getUniqueTempFilePath("cpp.obj");
  static_cast<void>(writeToFile(objFilePath, objFileData));
  result = runLinkCommand(request, dllPath, asmFileObjFilePath, objFilePath);
  if (!result.m_success) {
    return result;
  }
  std::unordered_map<std::string, Symbol> neededSymbols{};
  for (const auto &symbolName : symbolsWeShouldUpdateInNewObj) {
    std::string realSymbolName = getRealSymbolName(symbolName);
    neededSymbols[realSymbolName] = symbolsToUpdateWith.at(realSymbolName);
  }
  auto dllData = readFile(dllPath);
  if (!dllData) {
    return Result("failed to read " + dllPath);
  }

  writeLog("loading dll to memory");
  std::shared_ptr<LoadedDll> loadedDll;
  result = loadDll(dllPath, std::filesystem::path(dllPath).filename().string(),
                   *dllData, neededSymbols, loadedDll);
  if (!result.m_success) {
    return result;
  }
  writeLog("finished loading dll to memory");
  result =
      updatePreviousNeededSymbols(loadedDll, symbolsWeShouldUpdateInNewObj);
  if (!result.m_success) {
    return result;
  }
  // For now it isn't possible to free the module - as there is a need to
  // FunctionToBreak function, but this function exist in dllToChange, need
  // somehow to solve this.
  loadedDll->setShouldRelease(false);
  m_dynamicDlls.push_back(loadedDll);
  notifyDynamicModuleLoaded(loadedDll);
  return Result();
}

Result
Blink::updatePreviousNeededSymbols(const std::shared_ptr<LoadedDll> &loadedDll,
                                   const std::set<std::string> &symbolsToNull) {
  writeLog("updating previous modules with new symbols");
  auto newSymbols = loadedDll->getSymbols();
  for (const auto &symbolsInModule : getSymbolsToChangeInOldObjects()) {
    std::vector<std::pair<std::string, void *>> needToReplaceOldSymbols;
    for (const auto &oldSymbol : symbolsInModule) {
      auto realOldSymbolName = getRealSymbolName(oldSymbol.first);
      if (newSymbols.find(realOldSymbolName) != newSymbols.end() &&
          symbolsToNull.find(realOldSymbolName) == symbolsToNull.end()) {
        if (((size_t)oldSymbol.second.m_address) % sizeof(void *) != 0) {
          return Result(
              "The updated values don't have size which is devided by "
              "sizeof(void*)");
        }
        needToReplaceOldSymbols.push_back(
            std::make_pair(realOldSymbolName, oldSymbol.second.m_address));
      }
    }
    std::sort(needToReplaceOldSymbols.begin(), needToReplaceOldSymbols.end(),
              [](const std::pair<std::string, void *> &pair1,
                 const std::pair<std::string, void *> &pair2) {
                return pair1.second < pair2.second;
              });
    if (needToReplaceOldSymbols.empty()) {
      return Result();
    }

    auto oldInfoSize =
        ((char *)needToReplaceOldSymbols[needToReplaceOldSymbols.size() - 1]
             .second -
         (char *)needToReplaceOldSymbols[0].second + sizeof(void *)) /
        sizeof(void *);

    std::vector<void *> oldInfo(oldInfoSize);

    auto readSize =
        g_platform->readMemory(needToReplaceOldSymbols[0].second,
                               oldInfo.data(), oldInfo.size() * sizeof(void *));
    if (readSize != oldInfo.size() * sizeof(void *)) {
      return Result("failed to read");
    }
    for (size_t i = 0; i < needToReplaceOldSymbols.size(); i++) {
      size_t indexToChange = ((char *)needToReplaceOldSymbols[i].second -
                              (char *)needToReplaceOldSymbols[0].second) /
                             sizeof(void *);
      oldInfo[indexToChange] =
          newSymbols[needToReplaceOldSymbols[i].first].m_address;
    }
    (void)g_platform->writeMemory(needToReplaceOldSymbols[0].second,
                                  oldInfo.data(),
                                  sizeof(size_t) * oldInfo.size());
  }
  return Result();
}

Result Blink::getSymbolsWeShouldUpdateInNewObj(
    const std::vector<char> &objFileData,
    const std::unordered_map<std::string, Symbol> &symbolsToUpdateWith,
    std::set<std::string> &symbolsWeShouldUpdate) {
  symbolsWeShouldUpdate.clear();
  auto header = *(IMAGE_FILE_HEADER *)objFileData.data();
  auto newObjFileData = objFileData;
  std::vector<IMAGE_SECTION_HEADER *> sections;
  for (int i = 0; i < header.NumberOfSections; i++) {
    char *sectionLocation = newObjFileData.data() + sizeof(IMAGE_FILE_HEADER);
    sectionLocation += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    sections.push_back((IMAGE_SECTION_HEADER *)sectionLocation);
  }

  std::vector<IMAGE_SYMBOL> symbols(header.NumberOfSymbols);
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
  std::unordered_map<std::string, IMAGE_SYMBOL> namesToSymbols;
  for (const auto &symbol : symbols) {
    auto symbolName = getSymbolName(symbol, strings);
    namesToSymbols[symbolName] = symbol;
  }
  std::set<int> symbolIndexesNeededByRelocations;
  for (auto section : sections) {
    const auto section_relocation_table =
        reinterpret_cast<const IMAGE_RELOCATION *>(
            newObjFileData.data() + section->PointerToRelocations);
    for (unsigned int k = 0; k < section->NumberOfRelocations; ++k) {
      const IMAGE_RELOCATION &relocation = section_relocation_table[k];
      symbolIndexesNeededByRelocations.insert(relocation.SymbolTableIndex);
    }
  }

  for (const auto &symbolIndex : symbolIndexesNeededByRelocations) {
    auto &symbol = symbols.at(symbolIndex);
    auto symbolName = getSymbolName(symbol, strings);

    if (symbolName._Starts_with("__imp_") ||
        symbolName._Starts_with("__jmp_")) {
      std::string realSymbolName = getRealSymbolName(symbolName);
      bool isExternal = true;
      auto foundedSymbol = namesToSymbols.find(realSymbolName);
      if (foundedSymbol != namesToSymbols.end()) {
        if (!(foundedSymbol->second.StorageClass == IMAGE_SYM_CLASS_EXTERNAL &&
              foundedSymbol->second.SectionNumber == IMAGE_SYM_UNDEFINED)) {
          isExternal = false;
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
        symbolsWeShouldUpdate.insert(
            getSymbolName(symbols.at(symbolIndex), strings));
      }
    } else {
      if (symbol.StorageClass == IMAGE_SYM_CLASS_EXTERNAL &&
          symbol.SectionNumber == IMAGE_SYM_UNDEFINED) {
        if (symbolName._Starts_with("__CxxFrameHandler") ||
            symbolName.find("type_info") != -1) {
          continue;
        }
        return Result("failed to find symbol " + symbolName +
                      " which is probably intrinsic/static and should had "
                      "implementation in this obj file\n" +
                      "demangled: " +
                      std::string(lldb_private::Mangled(symbolName)
                                      .GetDemangledName()
                                      .AsCString()));
      }
    }
  }

  return Result();
}

Result
Blink::writeAsmFileWithNeededSymbols(const std::set<std::string> &symbolsToNull,
                                     std::string &asmFilePath) {
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
  asmFilePath = getUniqueTempFilePath("a.asm");
  static_cast<void>(writeToFile(
      asmFilePath, std::vector<char>{defData.begin(), defData.end()}));
  return Result();
}

Result Blink::createAsmObjFile(const LinkCommandRequest *request,
                               const std::string &asmFileObjFilePath,
                               const std::string &asmFilePath) {
  std::string processOutput;
  auto asmCommand = "\"" + request->masmpath() + "\"" + " /c /nologo /Zi /Fo" +
                    asmFileObjFilePath + " /W3 /errorReport:prompt  /Ta" +
                    asmFilePath;
  if (!createProcess(asmCommand, processOutput)) {
    return Result("failed to create process " + asmCommand + "\n" +
                  processOutput);
  }
  return Result();
}

Result Blink::runLinkCommand(const LinkCommandRequest *request,
                             const std::string &wantedOutputDll,
                             const std::string &asmFileObjFilePath,
                             const std::string &objFilePath) {
  std::string ldLinkPath = request->ldpath();
  auto ldProcessCommand =
      "\"" + ldLinkPath + "\"" + " " + asmFileObjFilePath + " " + objFilePath +
      R"( /dll /debug:full /force:unresolved )" + request->linkerflags() +
      " /NODEFAULTLIB /noentry /out:" + wantedOutputDll;
  writeLog("starting to link " + ldProcessCommand);
  std::string processOutput;
  if (!createProcess(ldProcessCommand, processOutput)) {
    return Result("failed to create process " + ldProcessCommand + "\n" +
                  processOutput);
  }
  writeLog("link finished");
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

Result
Blink::loadDll(const std::string &localModuleFilePath,
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
  std::optional<int> imageSizeToBe;
  for (int i = 0; i < imageNtHeaders->FileHeader.NumberOfSections; i++) {
    auto sectionHeaderLocationOffset =
        imageDosHeader->e_lfanew + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
        (DWORD)imageNtHeaders->FileHeader.SizeOfOptionalHeader;
    sectionHeaderLocationOffset += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    auto sectionHeaderLocationInDisk =
        (IMAGE_SECTION_HEADER *)(dllData.data() + sectionHeaderLocationOffset);
    auto commandSectionName = ".command";
    bool isDebugSection =
        sectionHeaderLocationInDisk->Name[0] == '/' ||
        0 == memcmp(commandSectionName, sectionHeaderLocationInDisk->Name,
                    strlen(commandSectionName));
    if (isDebugSection && !imageSizeToBe) {
      imageSizeToBe = sectionHeaderLocationInDisk->VirtualAddress;
    } else if (!isDebugSection) {
      imageSizeToBe.reset();
    }
    memcpy(localLoadedImage.data() +
               sectionHeaderLocationInDisk->VirtualAddress,
           dllData.data() + sectionHeaderLocationInDisk->PointerToRawData,
           sectionHeaderLocationInDisk->Misc.VirtualSize);
  }
  auto loadedImage = g_platform->allocateMemory(imageSize);
  loadedDll = std::make_shared<LoadedDll>(
      dllName, loadedImage, LoadedDll::LoadedDynamically::DYNAMIC);
  loadedDll->setLocalFilePath(localModuleFilePath);
  result = fixRelocations(localLoadedImage,
                          (char *)loadedImage -
                              (char *)imageNtHeaders->OptionalHeader.ImageBase);
  if (!result.m_success) {
    return result;
  }
  if (!g_platform->writeMemory(loadedImage, localLoadedImage.data(),
                               localLoadedImage.size())) {
    return Result();
  }
  result = updateSymbolsInNewObj(loadedDll, symbolsToImport, loadedImage,
                                 localLoadedImage.data());
  if (!result.m_success) {
    return result;
  }
  if (!g_platform->writeMemory(loadedImage, localLoadedImage.data(),
                               localLoadedImage.size())) {
    return Result();
  }
  return result;
}

Result Blink::updateSymbolsInNewObj(
    const std::shared_ptr<LoadedDll> &loadedDll,
    const std::unordered_map<std::string, Symbol> &symbolsToImport,
    void *loadedImage, void *localLoadedImage) {
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
      if (!isFunctionSymbol && !foundedSymbol->second.m_isConst) {
        shouldChangeSymbol = true;
      }
    }
    if (shouldChangeSymbol) {
      if (oldSymbols.find(realSymbolName) != oldSymbols.end()) {
        *(uint64_t *)((char *)symbol.second.m_address - (char *)loadedImage +
                      (char *)localLoadedImage) =
            (uint64_t)oldSymbols.find(realSymbolName)->second.m_address;
      }
    }
  }
  return Result();
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

std::shared_ptr<CreateFileHook::Greeter::Stub>
Blink::getClientForCreateFileHook() {
  return CreateFileHook::Greeter::NewStub(grpc::CreateChannel(
      "localhost:54000", grpc::InsecureChannelCredentials()));
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

void Blink::setInUnload(bool isInUnload) { m_isInUnload = isInUnload; }

Result Blink::link(const LinkCommandRequest *request) {
  writeLog("blink starting");
  auto result = initDllsIfNeeded();
  if (!result.m_success) {
    return result;
  }

  auto objFilePath = getUniqueTempFilePath(
      std::filesystem::path(request->filepath()).filename().string() + ".o");
  auto filePath = getUniqueTempFilePath(
      std::filesystem::path(request->filepath()).filename().string());
  writeToFile(filePath, *readFile(request->filepath()));
  result = compile(request, filePath, objFilePath);
  if (!result.m_success) {
    return result;
  }

  result = replaceIntrinsicsInObjFile(request, objFilePath);
  if (!result.m_success) {
    return result;
  }
  return link(request, objFilePath);
}

Result Blink::replaceIntrinsicsInObjFile(const LinkCommandRequest *request,
                                         const std::string &objFilePath) {
  const std::vector<std::string> intrinsicsToReplace = {"memset", "memmove",
                                                        "memcpy"};
  std::string objCopyCommand =
      "\"" + request->objcopypath() + "\"" + " " + objFilePath;
  for (const auto &intrinsic : intrinsicsToReplace) {
    objCopyCommand += " --redefine-sym " + intrinsic + "=__jmp_" + intrinsic;
  }
  std::string processOutput;
  if (!createProcess(objCopyCommand, processOutput)) {
    return Result("failed running process " + objCopyCommand + " \n" +
                  objCopyCommand);
  }
  return Result();
}

Result Blink::compile(const LinkCommandRequest *request,
                      const std::string &filePath,
                      const std::string &outputFilePath) {
  std::string clangFilePath = request->clangfilepath();
  std::string processOutput;
  std::string processCommand = "\"" + clangFilePath + "\"" +
                               " /EHa /Od /Zi /GS- -gdwarf " +
                               request->compilationflags() + " -c " + "\"" +
                               filePath + "\"" + " -o " + outputFilePath;
  writeLog("starting to compile " + processCommand);
  auto workingDir =
      std::filesystem::path(request->filepath()).parent_path().string();
  if (!createProcess(processCommand, processOutput, workingDir)) {
    return Result("failed running process " + processCommand + " \n" +
                  processOutput);
  }
  writeLog(processOutput);
  writeLog("finished compiling successfully");
  return Result();
}

std::vector<std::shared_ptr<LoadedDll>> Blink::getDynamicDlls() const {
  initDllsIfNeeded();
  return m_dynamicDlls;
}

void Blink::addFilePathToHook(const std::string &filePath,
                              const std::string &fileData) {
  if (!shouldAddFilePathToHook(filePath)) {
    return;
  }

  auto newFilePath = g_blink.getUniqueTempFilePath(filePath, "first");
  (void)writeToFile(newFilePath,
                    std::vector<char>{fileData.begin(), fileData.end()});
  auto absolutePath = std::filesystem::absolute(filePath).string();
  auto client = getClientForCreateFileHook();
  try {
    auto request = CreateFileHook::SendPathDataRequest();
    request.set_oldpath(absolutePath);
    request.set_newpath(newFilePath);
    auto reply = CreateFileHook::SendPathDataReply();
    grpc::ClientContext context;

    client->SendPathData(&context, request, &reply);
  } catch (...) {
  }
}

bool Blink::shouldAddFilePathToHook(const std::string &filePath) {
  try {
    std::scoped_lock lock(*m_originalFileToNewFileMutex);

    if (!initDllsIfNeeded().m_success) {
      return false;
    }
    auto absolutePath = std::filesystem::absolute(filePath).string();
    auto client = getClientForCreateFileHook();
    auto request = CreateFileHook::ShouldSendPathDataRequest();
    request.set_path(absolutePath);
    auto reply = CreateFileHook::ShouldSendPathDataReply();
    grpc::ClientContext context;
    client->ShouldSendPath(&context, request, &reply);
    auto res = reply.should();
    return res;
  } catch (...) {
    return false;
  }
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
  if (!m_isInUnload) {
    if (m_dllToChange) {
      modules.push_back(m_dllToChange);
    }
    modules.insert(modules.end(), m_dynamicDlls.begin(), m_dynamicDlls.end());
  }
  std::unordered_map<std::string, Symbol> symbols;
  for (const auto &module : modules) {
    for (const auto &symbol : module->getSymbols()) {
      if (symbols.find(symbol.first) != symbols.end()) {
        if (symbol.second.m_isFunction || symbol.second.m_isConst) {
          symbols[symbol.first] = symbol.second;
        }
      } else {
        symbols[symbol.first] = symbol.second;
      }
    }
  }
  return symbols;
}
