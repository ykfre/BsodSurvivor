#pragma once
#include <vector>
#include <string>
#include "blink/LoadDllFromMemory.h"
struct CommonCommandArgs {
  int selectedFrameIndex = 0;
  void (*logCallback)(const char *message, void *batton);
};
