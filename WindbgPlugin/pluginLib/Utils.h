#pragma once

#include <vcruntime_exception.h>
#include <string>
#include <optional>
#include <vector>
std::vector<std::string> splitString(const std::string &str,
                                             const std::string &delimiter);


std::optional<std::vector<char>> readFile(const std::string &file_path);

[[nodiscard]] bool writeToFile(const std::string &filePath,
                               const std::vector<char> &data);
[[nodiscard]] bool createProcess(const std::string &command,
                                 std::string &output,
                                 const std::string &workingDir = "");
void abortIfFalse(bool condition, const std::string &message);

std::string lowerString(const std::string &str);
