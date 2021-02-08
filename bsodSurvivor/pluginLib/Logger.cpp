#include "Logger.h"
#include <Windows.h>
#include <iomanip>
#include <iostream>

#include <chrono>
#include <sstream>

bool ConsoleLogger::write(const std::string &message) {
  std::cout << message;
  return true;
}
bool writeLog(const std::string &message) {
  if (t_logger) {
    std::stringstream s;
    auto time = std::time(nullptr);
    auto formattedTime = std::put_time(std::gmtime(&time), "%F %T%z");
    s << formattedTime;
    for (uint32_t i=0;i<100;i++) {
      if(t_logger->write(s.str() + ": " + message + "\n")) {
        return true;
      }
      Sleep(500);
    }
    return false;
  }
  return true;
}

void logCallback(const char *message, void *batton) {
  UNREFERENCED_PARAMETER(batton);
  auto messageString = std::string(message);
  if (messageString.find("error:") != -1 ||
      messageString.find("warning:") != -1) {
  }
  writeLog(message);
}
