#include "Platform.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "Utils.h"
#include "Logger.h"
#include "blink/blink.h"


std::vector<std::string> Platform::getNeededSymbolNames() {
  return std::vector<std::string>{g_config.breakFunctionName,
                                  g_config.callDestructorsFunctionName,
                                  g_config.allocateSpaceInStackFunctionName};
}

void *Platform::getFunctionToBreakAddress() {
  void *functionToBreakAddress = nullptr;
  functionToBreakAddress = g_blink.getSymbol(g_config.breakFunctionName);
  abortIfFalse(functionToBreakAddress, "not found " + g_config.breakFunctionName);
  return functionToBreakAddress;
}

void *Platform::getCallDestructorsFunction() {
  void *function =
      g_blink.getSymbol(g_config.callDestructorsFunctionName);
  abortIfFalse(function, "not found call destructors function");
  return function;
}

bool Platform::verifyPreConditions() {
  auto res = g_blink.initDllsIfNeeded();
  if (!res.m_success) {
    writeLog(res.m_err);
    return false;
  }
  for (const auto &symbol : g_platform->getNeededSymbolNames()) {
    void *outAddr = nullptr;
    if (!g_blink.getSymbol(symbol)) {
      writeLog("failed to find symbol " + symbol);
      return false;
    }
  }
  return true;
}
