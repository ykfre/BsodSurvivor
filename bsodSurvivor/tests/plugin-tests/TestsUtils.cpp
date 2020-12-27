#include "Platform.h"
#include "Commands.h"
#include "Logger.h"
#include "TestsUtils.h"
#include "Config.h"
#include "Crt.h"
#include "FunctionRunManager.h"
#include "Platform.h"
#include "UserModePlatform.h"
#include "blink/blink.h"
#include <Psapi.h>
#include <memory>
#include <stdexcept>

void executeCommand(
    std::thread &thread,
    const std::function<bool(CommonCommandArgs &args)> &command) {
  std::thread t([&]() {
    CommonCommandArgs args;
    args.selectedFrameIndex = 0;
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

void notifyFunctionEnded() {
  g_functionRunManager.notifyFunctionEnded(GetThreadId(GetCurrentThread()));
}

void TestUtils::SetUp() {
  g_notifyFunctionEnded = notifyFunctionEnded;
  g_config.breakFunctionName = "FunctionToBreak";
  g_config.callDestructorsFunctionName = "CallDestructors";
  g_config.executableModuleName = "ExecutableTest.dll";
  g_config.shouldHaveAllocateSpaceInStackFunction = false;
  g_config.allocateSpaceInStackFunctionName = "allocateSpaceInStack";
  g_config.modulesNames = {"ntdll.dll", "kernel32.dll", "kernelbase.dll",
                           "ucrtbase.dll", "externalDll.dll"};
  g_config.logCategories = {"default", "expr"};
  std::string executablePath;
  executablePath.resize(MAX_PATH);
  auto executablePathSize = GetModuleFileNameA(
      GetModuleHandleA(g_config.executableModuleName.c_str()),
      (char *)executablePath.c_str(), executablePath.size());
  executablePath.resize(executablePathSize + 1);
  g_config.executablePath = executablePath;

}

void TestUtils::executeExpression(std::thread &t,
                                         int selectedFrameIndex) {
  waitForBpNotification();
  SuspendThread(t.native_handle());
  executeCommand(t, [&](CommonCommandArgs &args) {
    g_platform->setCurrentThread(
        g_threadFactory->create(GetThreadId(t.native_handle())));
    t_logger = std::make_shared<ConsoleLogger>();

    args.selectedFrameIndex = selectedFrameIndex;
    auto expr = g_expr;
    return commands::executeExpression(args, expr);
  });
  ResumeThread(t.native_handle());
  while (g_shouldPauseExecute) {
  };
}
