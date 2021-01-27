#pragma once
#include <string>
#include <memory>
class Logger {
public:
  virtual void write(const std::string &message) = 0;
  virtual ~Logger() = default;
};

class ConsoleLogger : public Logger {
public:
  void write(const std::string &message) override;
};

inline std::shared_ptr<Logger> g_logger;
inline thread_local std::shared_ptr<Logger> t_logger;
void writeLog(const std::string &message);

void logCallback(const char* message, void* batton);