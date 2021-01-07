#include "WindbgLogger.h"
#include "ExtClass.h"

void WindbgLogger::write(const std::string &message) 
{
  g_ExtInstance.log(message);
}
