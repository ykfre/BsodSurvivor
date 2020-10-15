#include "Platform.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "Utils.h"

std::vector<std::string> Platform::getNeededSymbolNames() {
  return std::vector<std::string>{g_config.breakFunctionName,
                                  g_config.callDestructorsFunctionName,
                                  g_config.allocateSpaceInStackFunctionName};
}

void *Platform::getFunctionToBreakAddress() {
  void *functionToBreakAddress = nullptr;
  auto result = findSymbol(g_config.executableModuleName,
                           g_config.breakFunctionName, functionToBreakAddress);
  abortIfFalse(result, "not found a bp function");
  return functionToBreakAddress;
}

void *Platform::getCallDestructorsFunction() {
  void *function = nullptr;
  auto result = findSymbol(g_config.executableModuleName,
                           g_config.callDestructorsFunctionName, function);
  abortIfFalse(result, "not found call destructors function");
  return function;
}
