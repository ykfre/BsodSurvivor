#pragma once
#include "ExportsDefines.h"
#include "AssertUtils.h"
#include <string>
API extern void (*g_notifyFunctionEnded)();

extern "C" API void FunctionToBreak();

API extern bool g_shouldPauseExecute;
API extern bool g_notifyBp;
API extern std::string g_expr;

#define BP()                                                                   \
  g_shouldPauseExecute = true;                                                 \
  g_notifyBp = true;                                                           \
  while (g_shouldPauseExecute) {                                               \
  }                                                                            

#define RUN_EXPR(expr)                                                         \
  g_expr =                                                                     \
      std::string("	#define FAIL_TEST_IF_FALSE(condition) if (!(condition)) {print(#condition);__debugbreak();}\n") + std::string(expr) + ";g_shouldPauseExecute = false;";               \
  BP();
