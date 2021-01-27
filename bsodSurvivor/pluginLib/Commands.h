#pragma once
#include "CommonCommandArgs.h"
#include "platform.h"
#include <string>
#include <functional>
namespace commands {
bool executeExpression(CommonCommandArgs &commonCommandArgs,
                       const std::string &expression);

bool returnFromFrame(CommonCommandArgs &commonCommandArgs,
                     size_t untilFrameIndex, bool shouldCallDestructors);

bool jumpTo(CommonCommandArgs &commonCommandArgs, uint32_t line);

bool jumpToMostUpdatedFunction(CommonCommandArgs &commonCommandArgs);

bool runCommand(const std::function<bool()> &func,
                const CommonCommandArgs &commonCommandArgs,
                std::vector<std::shared_ptr<LoadedDll>> &modules);
void initializeLLdbGlobals();
} // namespace commands