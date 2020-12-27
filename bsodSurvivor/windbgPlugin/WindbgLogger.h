#pragma once
#include "Logger.h"

class WindbgLogger : public Logger{
  void write(const std::string &message) override;
};
