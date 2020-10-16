#include "Crt.h"
#include <iostream>
extern "C" void fsf() {}

API void (*g_notifyFunctionEnded)() = nullptr;
API bool g_shouldPauseExecute = 1;
API bool g_notifyBp;
API std::string g_expr;

extern "C" __declspec(dllexport)void print(const char* m) {
  std::cout << "expression failed:" << std::endl;
	std::cout << m << std::endl; }

extern "C" API void FunctionToBreak() {
  g_notifyFunctionEnded();
  while (1) {
  }
}

struct StructToPass {
  size_t rsp;
  size_t numOfDestructors;
  void **destructors;
};
extern "C" API void CallDestructors(StructToPass *structToPass) {
  for (size_t i = 0; i< structToPass->numOfDestructors; i++) {
    ((void (*)(size_t, size_t))((&structToPass->destructors)[i]))(0, structToPass->rsp);
  }
}

__declspec(dllexport) extern "C" void my_4283271732885569984(
    const void *address) {
  //delete[] address;
}

__declspec(dllexport) extern "C" void my_13277635176987272308(void *address,
                                                              size_t sz) {
  //delete[] address;
}

//__acrt_iob_func
__declspec(dllexport) extern "C" void* my_2440136842857855463() {
  return nullptr;
}

__declspec(dllexport) extern "C" void my_10679423878247868446(
    const void *address) {
  //delete address;
}

// new[]
__declspec(dllexport) extern "C" void *my_6892482782503763861(size_t size) {
  return new char[size];
}

// typeinfo::vtable
__declspec(dllexport) extern "C" void my_7348934957876749966() {}

// new()
__declspec(dllexport) extern "C" void *my_9752278495665330021(size_t size) {
  return new char[size];
}
