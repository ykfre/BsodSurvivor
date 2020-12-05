#pragma once
#include "ExportsDefines.h"

namespace tests {
namespace returnFromFrame {
extern API bool g_frameTwoMet;
extern API int g_counter;

API void untilTwoFrames(bool shouldCallDestructor);
API void returnFromFunctionTest();
API void leafFunctionTest(bool shouldCallDestructor);
API void tempObjectsTest();
API void forLoopTest();
API void forLoopTest2();
API void forLoopTest3();
API void scopeInScope();
API void scopeInScope2();
API void scopeInScope3();
API void scopeInScope4();
API void bpAfterFirstDestructor();
API void multipleDestructorsTests();
API void noOperationAfterConstructor();
API void sanity(bool shouldCallDestructor);
API void noDestructorsToCallTest();
API void noDestructorInScope();
API void noDestructorInScope2();

}
} // namespace tests
