#pragma once
#include "Logger.h"

class WindbgLogger : public Logger{
  bool write(const std::string &message) override;
};
