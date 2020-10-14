#pragma once
#include "stdafx.h"

#include "ExportsDefines.h"

std::unique_ptr<ClassWithDestructor> retFunc();
namespace test {
namespace expression {
API void localVariableSanity();
API void inlineInClassTest();
API void globalVariableSanity();
API void lambdaSanity();

API void classTestSanity();

API void inlineFunctionTest();

API void selectFrame1Test();

}
} // namespace test
