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
  std::string callDestructorsFunctionName;
  std::string allocateSpaceInStackFunctionName;
  std::vector<std::string> modulesNames;
  size_t serverPort = 0;
};

inline Config g_config;
