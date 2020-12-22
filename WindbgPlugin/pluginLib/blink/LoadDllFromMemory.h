#pragma once
#include "Result.h"
#pragma warning(push, 0)
#include "lldb/Core/Module.h"
#pragma warning(pop)
#include <functional>
#include <memory>
#include <optional>
#include <string>
#include <unordered_map>
#include <vector>

struct Symbol {
  enum class IsFromExport { IS, NOT };

  enum class IsConst { IS, NOT };

  enum class IsFunction { IS, NOT };
  Symbol(){};
  Symbol(const std::string &symbolName, void *address, IsConst isConst,
         IsFromExport isFromExport, IsFunction isFunction) {
    m_symbolName = symbolName;
    m_address = address;
    m_isConst = isConst == IsConst::IS;
    m_isFromExport = isFromExport == IsFromExport::IS;
    m_isFunction = isFunction == IsFunction::IS;
  }

  std::string m_symbolName;
  void *m_address = nullptr;
  bool m_isConst;
  bool m_isFromExport;
  bool m_isFunction;
};

class LoadedDll {
public:
  enum class LoadedDynamically { DYNAMIC = 0, NOT_DYNAMIC = 1 };
  LoadedDll(const std::string &moduleName, void *startAddress,
            LoadedDynamically isDynamic);
  ~LoadedDll();
  LoadedDll(LoadedDll &&other) = delete;
  LoadedDll &operator=(LoadedDll &&other) = delete;
  LoadedDll(const LoadedDll &) = delete;
  LoadedDll &operator=(const LoadedDll &) = delete;
  std::vector<char> readDataAsVirtual() const;
  void *getStartAddress() const { return m_startAddress; }
  std::unordered_map<std::string, Symbol> getSymbols() const;
  lldb::ModuleSP getLLdbModule() const;
  void setLocalFilePath(const std::string &filePath);
  std::string getName();
  void setShouldRelease(bool shouldRelease) {
    m_shouldRelease = shouldRelease;
  }

private:
  std::vector<char> readDataAsDisk() const;

  static bool getTripleForProcess(const lldb_private::FileSpec &executable,
                                  llvm::Triple &triple);
  std::vector<char> readDataImp(bool asVirtual) const;
  void readDataImp(std::vector<char> &pe, size_t offset, size_t howMuchToRead,
                   std::optional<size_t> whereTo = std::nullopt) const;
  std::unordered_map<std::string, Symbol> getExportedSymbols() const;
  void *m_startAddress;
  std::optional<std::string> m_localFilePath;
  mutable lldb::ModuleSP m_lldbModule;
  LoadedDynamically m_isDynamic;
  std::string m_moduleName;
  bool m_shouldRelease = true;
  mutable bool m_isReadAsVirtual = false;
  mutable bool m_isReadAsDisk= false;
  mutable std::unordered_map<std::string, Symbol> m_symbolsNamesToSymbol;
  mutable std::vector<char> m_bufferAsVirtual;
  mutable std::vector<char> m_bufferAsDisk;
};
