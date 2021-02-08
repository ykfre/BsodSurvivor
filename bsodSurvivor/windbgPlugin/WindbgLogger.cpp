#include "WindbgLogger.h"
#include "ExtClass.h"

bool WindbgLogger::write(const std::string &message) {
  return g_ExtInstance.log(message);
}
