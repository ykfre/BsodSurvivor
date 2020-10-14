#pragma once
#include <vector>
#include <string>

struct ModuleData {
  std::string moduleName;
  std::vector<char> buffer;
  size_t startAddr;
};

struct CommonCommandArgs {
  std::vector<ModuleData> modules;
  int selectedFrameIndex = 0;
  void (*logCallback)(const char *message, void *batton);
};
