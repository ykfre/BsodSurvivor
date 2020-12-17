#pragma once
#pragma warning(push, 0)
#include "LinkCommand.grpc.pb.h"
#pragma warning(pop)
#include "CreateFileHook.grpc.pb.h"
#include "LoadDllFromMemory.h"
#include "Result.h"
#include <Windows.h>
#include <mutex>
#include <string>
using LinkCommand::LinkCommandRequest;

class Blink {
public:
  Blink();
  Result initDllsIfNeeded() const;
  Result link(const LinkCommandRequest *request);
  Result replaceIntrinsicsInObjFile(const LinkCommandRequest *request,
                                    const std::string &objFilePath);
  Result compile(const LinkCommandRequest *request, const std::string &filePath,
                 const std::string &outputFilePath);
  std::vector<std::shared_ptr<LoadedDll>> getDynamicDlls() const;
  void resetDllToChange();
  std::string getUniqueTempFilePath(const std::string &filePath,
                                    const std::string &prefix = "");
  std::shared_ptr<LoadedDll> getDllToChange() const;
  std::vector<std::shared_ptr<LoadedDll>> getAllDlls() const;
  std::vector<std::shared_ptr<LoadedDll>> getOrdinaryDlls() const;
  void notifyDynamicModuleLoaded(std::shared_ptr<LoadedDll> module);
  void notifyDynamicModuleUnloaded(std::shared_ptr<LoadedDll> module);

  void addFilePathToHook(const std::string &filePath,
                         const std::string &fileData);
  bool shouldAddFilePathToHook(const std::string &filePath);
  std::vector<std::function<void(const std::shared_ptr<LoadedDll> &)>>
      m_onLoadModule;
  std::vector<std::function<void(const std::shared_ptr<LoadedDll> &)>>
      m_onUnloadModule;

  std::shared_ptr<std::mutex> m_originalFileToNewFileMutex;
  void *getSymbol(const std::string &symbolName);

private:
  Result link(const LinkCommandRequest *request, const std::string &newObjPath);
  std::unordered_map<std::string, Symbol> getSymbolsToUpdateWith();
  std::vector<std::unordered_map<std::string, Symbol>>
  getSymbolsToChangeInOldObjects();
  Result link(const LinkCommandRequest *request,
              const std::vector<char> &objFileData);

  Result
  updatePreviousNeededSymbols(const std::shared_ptr<LoadedDll> &loadedDll,
                                const std::set<std::string> &symbolsToNull);

  Result getSymbolsWeShouldUpdateInNewObj(
      const std::vector<char> &objFileData,
      const std::unordered_map<std::string, Symbol> &symbolsToUpdateWith,
      std::set<std::string> &symbolsWeShouldUpdate);

  Result
  writeAsmFileWithNeededSymbols(const std::set<std::string> &symbolsToNull,
                                std::string &asmFilePath);

  Result createAsmObjFile(const LinkCommandRequest *request,
                          const std::string &asmFileObjFilePath,
                          const std::string &asmFilePath);

  Result runLinkCommand(const LinkCommandRequest *request,
                        const std::string &wantedOutputDll,
                        const std::string &asmFileObjFilePath,
                        const std::string &objFilePath);
  Result fixRelocations(std::vector<char> &localLoadedImage, uint64_t delta);
  Result loadDllFromMemory(
      const std::string &dllName, const std::vector<char> &dllData,
      const std::unordered_map<std::string, Symbol> &symbolsToImport,
      std::shared_ptr<LoadedDll> &loadedDll);

  Result updateSymbolsInNewObj(
      const std::shared_ptr<LoadedDll> &loadedDll,
      const std::unordered_map<std::string, Symbol> &symbolsToImport,
      void *loadedImage, void *localLoadedImage);

  static std::string getRealSymbolName(const std::string &symbolName);
  std::shared_ptr<CreateFileHook::Greeter::Stub> getClientForCreateFileHook();
  static bool isJumpSymbol(const std::string &symbol);
  inline const static std::string TEMP_DIR_NAME = "BLINK";
  mutable bool m_isInitDlls = false;

  std::shared_ptr<std::mutex> m_mutex;

  mutable std::shared_ptr<LoadedDll> m_dllToChange;
  mutable std::vector<std::shared_ptr<LoadedDll>> m_orderinaryDlls;
  mutable std::vector<std::shared_ptr<LoadedDll>> m_dynamicDlls;
  std::string m_tempDirPath;
};

extern Blink g_blink;
