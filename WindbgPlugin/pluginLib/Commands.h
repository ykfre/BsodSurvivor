#pragma once
#include "CommonCommandArgs.h"
#include "platform.h"
#include <string>

namespace commands {
bool executeExpression(CommonCommandArgs &commonCommandArgs,
                       const std::string &expression);

bool returnFromFrame(CommonCommandArgs &commonCommandArgs,
                     size_t untilFrameIndex, bool shouldCallDestructors);

bool jumpTo(CommonCommandArgs &commonCommandArgs, uint32_t line);
void initializeLLdbGlobals();
} // namespace commands