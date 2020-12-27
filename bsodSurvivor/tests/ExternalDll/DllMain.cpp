#include "DllMain.h"
#include <Windows.h>
extern "C" int externalFunc() { return EXTERNAL_FUNC_RESULT; }

extern "C" int externalFunc2() { return EXTERNAL_FUNC_RESULT; }

BOOL WINAPI DllMain(HINSTANCE hinstDLL, // handle to DLL module
                    DWORD fdwReason,    // reason for calling function
                    LPVOID lpReserved)  // reserved
{
  return true;
}