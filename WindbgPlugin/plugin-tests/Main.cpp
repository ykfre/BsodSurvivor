#include "Commands.h"
#include "FunctionRunManager.h"
#include "gtest/gtest.h"

#include "Crt.h"
#include "Logger.h"
#include "UserModePlatform.h"
#include <Windows.h>
#include <string>
#include "CommonCommandArgs.h"
#include <Psapi.h>
#include <stdexcept>
#include <functional>
#include <thread>
#include "Config.h"
#include "Module.h"
#include "ExpressionTests.h"


void notifyFunctionEnded() {
  g_functionRunManager.notifyFunctionEnded(GetThreadId(GetCurrentThread()));
}

int main(int argc, char** argv) {
  g_logger = std::make_shared<ConsoleLogger>();
  g_notifyFunctionEnded = notifyFunctionEnded;
  commands::initializeLLdbGlobals();

  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();

}