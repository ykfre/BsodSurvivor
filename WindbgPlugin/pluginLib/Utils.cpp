#pragma warning(push, 0)
#include "Utils.h"
#include <Windows.h>
#include "Logger.h"
#include <fstream>
#pragma warning(pop)

std::vector<std::string> splitString(const std::string &str,
                                             const std::string &delimiter) {
  std::vector<std::string> strings;

  std::string::size_type pos = 0;
  std::string::size_type prev = 0;
  while ((pos = str.find(delimiter, prev)) != std::string::npos) {
    strings.push_back(str.substr(prev, pos - prev));
    prev = pos + 1;
  }

  // To get the last substring (or only, if delimiter is not found)
  strings.push_back(str.substr(prev));

  return strings;
}

std::optional<std::string> readFile(const std::string &file_path) {
  std::ifstream file(file_path, std::ifstream::binary);
  if (!file) {
    return std::nullopt;
  }
  // get length of file:
  file.seekg(0, file.end);
  size_t length = file.tellg();
  file.seekg(0, file.beg);
  std::vector<char> result(length);
  file.read(result.data(), result.size());
  auto stringResult = std::string(result.begin(), result.end());
  stringResult.push_back('\0');
  return stringResult;
}

void abortIfFalse(bool condition, const std::string &message) { 
    if (condition) {
    return;
    }
    if (IsDebuggerPresent()) {
    __debugbreak();
  }
    writeLog(message);
}
