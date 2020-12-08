#include <windows.h>
#include "Result.h"


Result::Result(std::string err) {
  if (IsDebuggerPresent()) {
    __debugbreak();
  }
  m_err = err;
  m_success = false;
}
