#include "AssertUtils.h"
#include "Crt.h"
#include <windows.h>

API void finallyTest() {
  int a = 0;
  __try {
    a += 1;
  } __finally {
    a += 2;
  }
  failTestIfFalse(a == 3);
}

static volatile int* g_a = nullptr;
API void exceptTest() {
  int a = 0;
  __try {
    *g_a = 0;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    a++;
  }
  failTestIfFalse(a==1);
}