
#include "LoadDllFromMemory.h"
#include "Platform.h"
#include "Result.h"
#include "blink.h"
#include "pdb_reader.hpp"
#include "utils.h"
#include <functional>


LoadedDll::LoadedDll(const std::string &moduleName, void *startAddress,
                     LoadedDynamically isDynamic) {
  m_isDynamic = isDynamic;
  m_moduleName = moduleName;
  m_startAddress = startAddress;
}

LoadedDll::~LoadedDll() {
  if (m_shouldRelease && m_isDynamic == LoadedDynamically::DYNAMIC) {
    if (m_startAddress) {
      g_platform->deallocateMemory(m_startAddress);
    }
  }
}

std::vector<char> LoadedDll::readDataAsVirtual() const {
  if (!m_isReadAsVirtual) {
    m_bufferAsVirtual = readDataImp(true);
    m_isReadAsVirtual = true;
  }
  return m_bufferAsVirtual;
}

std::vector<char> LoadedDll::readDataAsDisk() const {
  if (!m_isReadAsDisk) {
    m_bufferAsDisk = readDataImp(false);
    m_isReadAsDisk = true;
  }
  return m_bufferAsDisk;
}

std::unordered_map<std::string, Symbol> LoadedDll::getSymbols() const {
  if (!m_symbolsNamesToSymbol.empty()) {
    return m_symbolsNamesToSymbol;
  }
  m_symbolsNamesToSymbol = getExportedSymbols();
  auto loadedDllData = readDataAsVirtual();

  const auto headers = reinterpret_cast<const IMAGE_NT_HEADERS *>(
      loadedDllData.data() +
      reinterpret_cast<const IMAGE_DOS_HEADER *>(loadedDllData.data())
          ->e_lfanew);
  // Search debug directory for program debug database file name

  struct RSDS_DEBUG_FORMAT {
    uint32_t signature;
    blink::guid guid;
    uint32_t age;
    char path[1];
  } const *debug_data = nullptr;

  // Search debug directory for program debug database file name
  const IMAGE_DATA_DIRECTORY &debug_directory =
      headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_DEBUG];
  const auto debug_directory_entries =
      reinterpret_cast<const IMAGE_DEBUG_DIRECTORY *>(
          loadedDllData.data() + debug_directory.VirtualAddress);

  for (unsigned int i = 0;
       i < debug_directory.Size / sizeof(IMAGE_DEBUG_DIRECTORY); ++i) {
    if (debug_directory_entries[i].Type == IMAGE_DEBUG_TYPE_CODEVIEW) {
      debug_data = reinterpret_cast<const RSDS_DEBUG_FORMAT *>(
          loadedDllData.data() + debug_directory_entries[i].AddressOfRawData);
      if (debug_data->signature == 0x53445352) // RSDS
        break;
    }
  }

  if (debug_data == nullptr) {
    return m_symbolsNamesToSymbol;
  }

  blink::pdb_reader pdb(debug_data->path);

  // Check if the debug information actually matches the executable
  if (pdb.guid() != debug_data->guid)
    return m_symbolsNamesToSymbol;

  printf(("  Found program debug database: " + std::string(debug_data->path))
             .c_str());

  // The linker working directory should equal the project root directory
  std::unordered_map<std::string, Symbol> _symbols;
  pdb.read_symbol_table((uint8_t *)m_startAddress, _symbols);
  std::unordered_map<std::string, Symbol> onlySymbolsWithValues;
  for (const auto &symbol : _symbols) {
    if (!symbol.second.m_address) {
      continue;
    }
    onlySymbolsWithValues[symbol.first] = symbol.second;
  }
  m_symbolsNamesToSymbol = onlySymbolsWithValues;
  return m_symbolsNamesToSymbol;
}

lldb::ModuleSP LoadedDll::getLLdbModule() const {
  if (!m_lldbModule) {
    if (m_localFilePath) {
      lldb_private::FileSpec fileSpec(*m_localFilePath);

      llvm::Triple triple;
      getTripleForProcess(fileSpec, triple);
      m_lldbModule = lldb::ModuleSP(
          new lldb_private::Module(fileSpec, lldb_private::ArchSpec(triple)));
      return m_lldbModule;
    }
    llvm::SmallString<128> TmpModel;
    llvm::sys::path::system_temp_directory(true, TmpModel);
    llvm::sys::path::append(TmpModel, m_moduleName + "%%%%%.dll");
    auto tempFile = llvm::sys::fs::TempFile::create(TmpModel);

    std::string modulePath = tempFile.get().TmpName;
    tempFile.get().keep();
    lldb_private::FileSpec fileSpec(modulePath);
    llvm::Triple triple;
    getTripleForProcess(fileSpec, triple);
    {
      std::ofstream f(modulePath, std::ios::binary);
      f.write(readDataAsDisk().data(), readDataAsDisk().size());
    }
    m_lldbModule = lldb::ModuleSP(
        new lldb_private::Module(fileSpec, lldb_private::ArchSpec(triple)));
  }
  return m_lldbModule;
}

void LoadedDll::setLocalFilePath(const std::string &filePath) {
  m_localFilePath = filePath;
}

std::string LoadedDll::getName() { return m_moduleName; }

bool LoadedDll::getTripleForProcess(const lldb_private::FileSpec &executable,
                                    llvm::Triple &triple) {
  // Open the PE File as a binary file, and parse just enough information to
  // determine the machine type.
  auto imageBinaryP = lldb_private::FileSystem::Instance().Open(
      executable, lldb_private::File::eOpenOptionRead,
      lldb::eFilePermissionsUserRead);
  if (!imageBinaryP)
    return llvm::errorToBool(imageBinaryP.takeError());
  lldb_private::File &imageBinary = *imageBinaryP.get();
  imageBinary.SeekFromStart(0x3c);
  int32_t peOffset = 0;
  uint32_t peHead = 0;
  uint16_t machineType = 0;
  size_t readSize = sizeof(peOffset);
  imageBinary.Read(&peOffset, readSize);
  imageBinary.SeekFromStart(peOffset);
  imageBinary.Read(&peHead, readSize);
  if (peHead != 0x00004550) // "PE\0\0", little-endian
    return false;           // Status: Can't find PE header
  readSize = 2;
  imageBinary.Read(&machineType, readSize);
  triple.setVendor(llvm::Triple::PC);
  triple.setOS(llvm::Triple::Win32);
  triple.setArch(llvm::Triple::UnknownArch);
  if (machineType == 0x8664)
    triple.setArch(llvm::Triple::x86_64);
  else if (machineType == 0x14c)
    triple.setArch(llvm::Triple::x86);
  else if (machineType == 0x1c4)
    triple.setArch(llvm::Triple::arm);
  else if (machineType == 0xaa64)
    triple.setArch(llvm::Triple::aarch64);

  return true;
}

std::vector<char> LoadedDll::readDataImp(bool asVirtual) const {
  auto newPe = std::vector<char>();
  newPe.resize(sizeof(IMAGE_DOS_HEADER));
  readDataImp(newPe, 0, sizeof(IMAGE_DOS_HEADER));
  auto fileData = newPe.data();
  auto dosHeader = *(PIMAGE_DOS_HEADER)fileData;
  newPe.resize(dosHeader.e_lfanew + sizeof(IMAGE_NT_HEADERS));
  readDataImp(newPe, dosHeader.e_lfanew, sizeof(IMAGE_NT_HEADERS));
  auto imageNTHeaders =
      *(PIMAGE_NT_HEADERS)((char *)newPe.data() + dosHeader.e_lfanew);
  newPe.resize(imageNTHeaders.OptionalHeader.SizeOfImage);
  readDataImp(newPe,
              dosHeader.e_lfanew + sizeof(DWORD) +
                  (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
                  (DWORD)imageNTHeaders.FileHeader.SizeOfOptionalHeader,
              sizeof(IMAGE_SECTION_HEADER) *
                  imageNTHeaders.FileHeader.NumberOfSections);
  for (int i = 0; i < imageNTHeaders.FileHeader.NumberOfSections; i++) {
    auto imageNTHeadersPointer =
        (PIMAGE_NT_HEADERS)((char *)newPe.data() + dosHeader.e_lfanew);
    char *sectionLocation =
        (char *)imageNTHeadersPointer + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
        (DWORD)imageNTHeadersPointer->FileHeader.SizeOfOptionalHeader;
    sectionLocation += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    auto sectionHeader = (PIMAGE_SECTION_HEADER)sectionLocation;
    if (sectionHeader->Characteristics & IMAGE_SCN_MEM_DISCARDABLE) {
      continue;
    }
    if (asVirtual) {
      readDataImp(newPe, sectionHeader->VirtualAddress,
                  sectionHeader->Misc.VirtualSize);
    } else {
      readDataImp(
          newPe, sectionHeader->VirtualAddress,
          std::min(sectionHeader->SizeOfRawData, sectionHeader->Misc.VirtualSize),
          sectionHeader->PointerToRawData);
    }
  }
  return newPe;
}

void LoadedDll::readDataImp(std::vector<char> &pe, size_t offset,
                            size_t howMuchToRead,
                            std::optional<size_t> whereTo) const {
  if (!whereTo.has_value()) {
    whereTo = offset;
  }
  g_platform->readMemory((void *)((char *)m_startAddress + offset),
                         pe.data() + whereTo.value(), howMuchToRead);
}

std::unordered_map<std::string, Symbol> LoadedDll::getExportedSymbols() const {
  std::unordered_map<std::string, Symbol> res;
  auto loadedDllData = readDataAsVirtual();

  PIMAGE_EXPORT_DIRECTORY exports;
  const auto headers = reinterpret_cast<const IMAGE_NT_HEADERS *>(
      loadedDllData.data() +
      reinterpret_cast<const IMAGE_DOS_HEADER *>(loadedDllData.data())
          ->e_lfanew);
  // Search debug directory for program debug database file name
  const IMAGE_DATA_DIRECTORY &directory =
      headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT];

  if (directory.Size == 0) {
    return res;
  }
  exports = (PIMAGE_EXPORT_DIRECTORY)(loadedDllData.data() +
                                      directory.VirtualAddress);
  if (exports->NumberOfNames == 0 || exports->NumberOfFunctions == 0) {
    return res;
  }
  DWORD i;
  DWORD *nameRef = (DWORD *)(loadedDllData.data() + exports->AddressOfNames);
  WORD *ordinal =
      (WORD *)(loadedDllData.data() + exports->AddressOfNameOrdinals);
  struct ExportNameEntry {
    LPCSTR name;
    WORD idx;
  };
  std::vector<ExportNameEntry> entries(exports->NumberOfNames);
  for (i = 0; i < exports->NumberOfNames; i++, nameRef++, ordinal++) {
    entries[i].name = (const char *)(loadedDllData.data() + (*nameRef));
    entries[i].idx = *ordinal;
  }

  for (const auto &entry : entries) {
    DWORD *addresses =
        (DWORD *)(loadedDllData.data() + exports->AddressOfFunctions);
    // Use Ordinal to Lookup Function Address and Calculate Absolute
    void *addr = (void *)((char*)m_startAddress + addresses[entry.idx]);
    res[entry.name] =
        Symbol(entry.name, addr, Symbol::IsConst::IS,
                             Symbol::IsFromExport::IS, Symbol::IsFunction::IS);
  }
  return res;
}

