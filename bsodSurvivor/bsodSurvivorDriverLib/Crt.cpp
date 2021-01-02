struct StructToPass {
  size_t rsp;
  size_t numOfDestructors;
  void **destructors;
};

extern "C" void CallDestructors(StructToPass *structToPass) {
  for (size_t i = 0; i < structToPass->numOfDestructors; i++) {
    ((void (*)(size_t, size_t))((&structToPass->destructors)[i]))(
        0, structToPass->rsp);
  }
}

extern "C" __declspec(dllexport) void FunctionToBreak() {
  int i = 0;
  while (1) {
    i += 2;
  }
}

extern "C" void __AbsoluteZero() {

}

#ifdef _WIN64
extern "C" unsigned long long __stdcall __readcr8() {
  unsigned long long cr_val = 0;
  __asm__ __volatile__("mov %%cr8, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}
extern "C" unsigned long long __stdcall __readcr4() {
  unsigned long long cr_val = 0;
  __asm__ __volatile__("mov %%cr4, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long long __stdcall __readcr3() {
  unsigned long long cr_val = 0;
  __asm__ __volatile__("mov %%cr3, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long long __stdcall __readcr2() {
  unsigned long long cr_val = 0;
  __asm__ __volatile__("mov %%cr2, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long long __stdcall __readcr0() {
  unsigned long long cr_val = 0;
  __asm__ __volatile__("mov %%cr0, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}
#else
extern "C" unsigned long __stdcall __readcr4() {
  unsigned long cr_val = 0;
  __asm__ __volatile__("mov %%cr4, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long __stdcall __readcr3() {
  unsigned long cr_val = 0;
  __asm__ __volatile__("mov %%cr3, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long __stdcall __readcr2() {
  unsigned long cr_val = 0;
  __asm__ __volatile__("mov %%cr2, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}

extern "C" unsigned long __stdcall __readcr0() {
  long long cr_val = 0;
  __asm__ __volatile__("mov %%cr0, %0" : "=r"(cr_val) : : "memory");
  return cr_val;
}
#endif

extern "C" void __std_terminate() {}

extern "C" void __CxxFrameHandler4() {}

extern "C" void __CxxFrameHandler3() {}