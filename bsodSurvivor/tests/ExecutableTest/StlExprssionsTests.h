#pragma once
#include "ExportsDefines.h"


namespace test {
namespace expression {
API void optionalObjectTest();
API void expectedTest();
API void sharedMemoryTest();
API void uniquePtrTest();
API void windowsApiTest();
API void mixStlWithDwarfData();

API void allStl();

extern API int g_counter;
}
} // namespace test

