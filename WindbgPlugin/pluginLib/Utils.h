#pragma once

#include <vcruntime_exception.h>
#include <string>
#include <optional>
#include <vector>
std::vector<std::string> splitString(const std::string &str,
                                             const std::string &delimiter);


std::optional<std::string> readFile(const std::string &file_path);

void abortIfFalse(bool condition, const std::string &message);
