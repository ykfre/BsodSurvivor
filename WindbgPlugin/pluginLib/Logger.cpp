#include "Logger.h"
#include <Windows.h>
#include <iostream>

void ConsoleLogger::write(const std::string &message) {
  std::cout << message;
}

void writeLog(const std::string &message) {
  if (g_logger) {
    g_logger->write(message + "\n");
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
