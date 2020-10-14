#pragma once
#include "platform.h"
#include "CommonCommandArgs.h"
#include <string>

namespace commands {
bool executeExpression(CommonCommandArgs &commonCommandArgs,
                       const std::string &expression);

bool returnFromFrame(CommonCommandArgs &commonCommandArgs,
                     size_t untilFrameIndex, bool shouldCallDestructors);

void initializeLLdbGlobals();
}