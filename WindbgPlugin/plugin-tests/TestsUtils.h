#pragma once
#include <Windows.h>
#include <string>
#include <thread>
#include <functional>

#include "CommonCommandArgs.h"
const std::string EXECUTABLE_TESTS_DLL = "ExecutableTest.dll";

ModuleData getModuleData(const std::string &moduleName);

void executeCommand(
    std::thread &thread,
    const std::function<bool(CommonCommandArgs &args)> &command);

void waitForBpNotification();
