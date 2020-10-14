#pragma once
#include <string>
#include <vector>

struct Config 
{
  [[nodiscard]] bool load(const std::string &filePath);
  [[nodiscard]] bool loadFromString(const std::string &data);

  std::string executablePath;
  std::string executableModuleName;
  std::string breakFunctionName;
  std::string allocateSpaceInStackFunctionName;
  std::vector<std::string> modulesNames;
};

inline Config g_config;
