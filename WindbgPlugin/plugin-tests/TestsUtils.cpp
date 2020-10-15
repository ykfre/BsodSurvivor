#include <Windows.h>
#include <memory>
#include <Psapi.h>
#include "TestsUtils.h"
#include "Module.h"
#include "Platform.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "Crt.h"
#include "UserModePlatform.h"
#include <stdexcept>

ModuleData getModuleData(const std::string &moduleName) {
  ModuleData moduleData;
  moduleData.moduleName = moduleName;
  moduleData.startAddr = (size_t)GetModuleHandleA(moduleName.c_str());
  if (moduleData.startAddr == 0) {
    throw std::runtime_error("couldn't find module " + moduleName);
  }
  MODULEINFO moduleInfo = {};
  bool result =
      GetModuleInformation(GetCurrentProcess(), (HMODULE)moduleData.startAddr,
                           &moduleInfo, sizeof(MODULEINFO));
  if (!result) {
    throw std::runtime_error("failed to get information for module" +
                             moduleName);
  }

  size_t moduleSize = moduleInfo.SizeOfImage;
  Module module;
  module.startAddr = moduleData.startAddr;
  module.size = moduleSize;

  moduleData.buffer = module.read();
  return moduleData;
}

void executeCommand(
    std::thread &thread,
    const std::function<bool(CommonCommandArgs &args)> &command) {
  std::thread t([&]() {
    t_platform = std::make_shared<UserModePlatform>(
        (void *)nullptr,
        (void *)GetModuleHandleA(EXECUTABLE_TESTS_DLL.c_str()));
    g_config.breakFunctionName = "FunctionToBreak";
    g_config.executableModuleName = EXECUTABLE_TESTS_DLL;
    g_config.allocateSpaceInStackFunctionName = "allocateSpaceInStack";
    std::string executablePath;
    executablePath.resize(MAX_PATH);
    auto executablePathSize = GetModuleFileNameA(
        GetModuleHandleA(EXECUTABLE_TESTS_DLL.c_str()),
        (char *)executablePath.c_str(), executablePath.size());
    executablePath.resize(executablePathSize + 1);
    g_config.executablePath = executablePath;
    CommonCommandArgs args;
    args.selectedFrameIndex = 0;
    for (const auto &moduleName :
         std::vector<std::string>{"ntdll.dll", "kernel32.dll", "kernelbase.dll","ucrtbase.dll",g_config.executableModuleName})
      args.modules.push_back(getModuleData(moduleName));
    if (!command(args)) {
      throw std::runtime_error("failed to run command");
    }
  });
  t.join();
}



void waitForBpNotification() {
  while (!g_notifyBp) {
  }
  g_notifyBp = false;
}
