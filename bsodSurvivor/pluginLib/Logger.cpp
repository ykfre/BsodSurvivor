#include "Logger.h"
#include <Windows.h>
#include <iomanip>
#include <iostream>

#include <chrono>
#include <sstream>

void ConsoleLogger::write(const std::string &message) { std::cout << message; }
void writeLog(const std::string &message) {
  if (t_logger) {
    std::stringstream s;
    auto time = std::time(nullptr);
    auto formattedTime = std::put_time(std::gmtime(&time), "%F %T%z");
    s << formattedTime;
    t_logger->write(s.str() +": "+ message + "\n");
  }
}

void logCallback(const char *message, void *batton) {
  UNREFERENCED_PARAMETER(batton);
  auto messageString = std::string(message);
  if (messageString.find("error:") != -1 ||
      messageString.find("warning:") != -1) {
  }
  writeLog(message);
}
