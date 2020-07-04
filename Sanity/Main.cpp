#include "RunArgs.h"

#include <Windows.h>
#include <iostream>
#include <thread>

std::thread g_thread;
void *allocate_memory(size_t size) { return new char[size]; }
void deallocate_memory(void *data) { delete[] data; }
int getThreadId() { return GetThreadId(g_thread.native_handle()); };
size_t ReadMemory(void *addr, void *buf, size_t size) {
  memcpy(buf, (void *)addr, size);
  return size;
}

size_t WriteMemory(void *addr, const void *buf, size_t size) {
  memcpy(addr, buf, size);
  return size;
}

class Stream2 : public lldb_private::Stream {
  void Flush() override {}

  size_t WriteImpl(const void *src, size_t src_len) override {
    for (int i = 0; i < src_len; i++) {
      std::cout << ((char *)src)[i];
    }
    return src_len;

  }
};
void resumeThread() { ResumeThread(g_thread.native_handle()); }

void suspedThread() { SuspendThread(g_thread.native_handle()); }

extern bool run(RunArgs args);

std::bitset<128> getRegisterValue(const std::string &registerName) {
  std::bitset<128> value;
  CONTEXT context;
  GetThreadContext(g_thread.native_handle(), &context);
  if (registerName == "Rax") {
    return context.Rax;
  } else if (registerName == "Rbx") {
    return context.Rbx;
  } else if (registerName == "Rcx") {
    return context.Rcx;
  } else if (registerName == "Rdx") {
    return context.Rdx;
  } else if (registerName == "Rdi") {
    return context.Rdi;
  } else if (registerName == "Rsi") {
    return context.Rsi;
  } else if (registerName == "R8") {
    return context.R8;
  } else if (registerName == "R9") {
    return context.R9;
  } else if (registerName == "R10") {
    return context.R10;
  } else if (registerName == "R11") {
    return context.R11;
  } else if (registerName == "R12") {
    return context.R12;
  } else if (registerName == "R13") {
    return context.R13;
  } else if (registerName == "R14") {
    return context.R14;
  } else if (registerName == "R15") {
    return context.R15;
  } else if (registerName == "Rbp") {
    return context.Rbp;
  } else if (registerName == "Rsp") {
    return context.Rsp;
  } else if (registerName == "Rip") {
    return context.Rip;
  } else if (registerName == "EFlags") {
    return context.EFlags;
  } else if (registerName == "xmm0") {
    memcpy(&value, &context.Xmm0, 16);
  } else if (registerName == "xmm1") {
    memcpy(&value, &context.Xmm1, 16);
  } else if (registerName == "xmm2") {
    memcpy(&value, &context.Xmm2, 16);
  } else if (registerName == "xmm3") {
    memcpy(&value, &context.Xmm3, 16);
  } else if (registerName == "xmm4") {
    memcpy(&value, &context.Xmm4, 16);
  } else if (registerName == "xmm5") {
    memcpy(&value, &context.Xmm5, 16);
  } else if (registerName == "xmm6") {
    memcpy(&value, &context.Xmm6, 16);
  } else if (registerName == "xmm7") {
    memcpy(&value, &context.Xmm7, 16);
  } else if (registerName == "xmm8") {
    memcpy(&value, &context.Xmm8, 16);
  } else if (registerName == "xmm9") {
    memcpy(&value, &context.Xmm9, 16);
  } else if (registerName == "xmm10") {
    memcpy(&value, &context.Xmm10, 16);
  } else if (registerName == "xmm11") {
    memcpy(&value, &context.Xmm11, 16);
  } else if (registerName == "xmm12") {
    memcpy(&value, &context.Xmm12, 16);
  } else if (registerName == "xmm13") {
    memcpy(&value, &context.Xmm13, 16);
  } else if (registerName == "xmm14") {
    memcpy(&value, &context.Xmm14, 16);
  } else if (registerName == "xmm15") {
    memcpy(&value, &context.Xmm15, 16);
  } else {
    __debugbreak();
  }
  return value;
}

void setRegisterValue(const std::string &registerName, std::bitset<128> value) {
  CONTEXT context;
  GetThreadContext(g_thread.native_handle(), &context);
  if (registerName == "Rax") {
    context.Rax = (DWORD64)value.to_ullong();
  } else if (registerName == "Rbx") {
    context.Rbx = (DWORD64)value.to_ullong();
  } else if (registerName == "Rcx") {
    context.Rcx = (DWORD64)value.to_ullong();
  } else if (registerName == "Rdx") {
    context.Rdx = (DWORD64)value.to_ullong();
  } else if (registerName == "Rdi") {
    context.Rdi = (DWORD64)value.to_ullong();
  } else if (registerName == "Rsi") {
    context.Rsi = (DWORD64)value.to_ullong();
  } else if (registerName == "R8") {
    context.R8 = (DWORD64)value.to_ullong();
  } else if (registerName == "R9") {
    context.R9 = (DWORD64)value.to_ullong();
  } else if (registerName == "R10") {
    context.R10 = (DWORD64)value.to_ullong();
  } else if (registerName == "R11") {
    context.R11 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerName == "R12") {
    context.R12 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerName == "R13") {
    context.R13 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerName == "R14") {
    context.R14 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerName == "R15") {
    context.R15 = (DWORD64)value.to_ullong();
  } else if (registerName == "Rbp") {
    context.Rbp = (DWORD64)value.to_ullong();
  } else if (registerName == "Rsp") {
    context.Rsp = (DWORD64)value.to_ullong();
  } else if (registerName == "Rip") {
    context.Rip = (DWORD64)value.to_ullong();
  } else if (registerName == "EFlags") {
    context.EFlags = value.to_ullong();
  } else if (registerName == "xmm0") {
    memcpy(&context.Xmm0, &value, 16);
  } else if (registerName == "xmm1") {
    memcpy(&context.Xmm1, &value, 16);
  } else if (registerName == "xmm2") {
    memcpy(&context.Xmm2, &value, 16);
  } else if (registerName == "xmm3") {
    memcpy(&context.Xmm3, &value, 16);
  } else if (registerName == "xmm4") {
    memcpy(&context.Xmm4, &value, 16);
  } else if (registerName == "xmm5") {
    memcpy(&context.Xmm5, &value, 16);
  } else if (registerName == "xmm6") {
    memcpy(&context.Xmm6, &value, 16);
  } else if (registerName == "xmm7") {
    memcpy(&context.Xmm7, &value, 16);
  } else if (registerName == "xmm8") {
    memcpy(&context.Xmm8, &value, 16);
  } else if (registerName == "xmm9") {
    memcpy(&context.Xmm9, &value, 16);
  } else if (registerName == "xmm10") {
    memcpy(&context.Xmm10, &value, 16);
  } else if (registerName == "xmm11") {
    memcpy(&context.Xmm11, &value, 16);
  } else if (registerName == "xmm12") {
    memcpy(&context.Xmm12, &value, 16);
  } else if (registerName == "xmm13") {
    memcpy(&context.Xmm13, &value, 16);
  } else if (registerName == "xmm14") {
    memcpy(&context.Xmm14, &value, 16);
  } else if (registerName == "xmm15") {
    memcpy(&context.Xmm15, &value, 16);
  } else {
    __debugbreak();
  }
  SetThreadContext(g_thread.native_handle(), &context);
}

int main() {
  RunArgs args;
  args.allocateMemory = allocate_memory;
  args.deallocateMemory = deallocate_memory;
  args.expression = "#include <vector>\nd+=1;signalEvent();while(1){}";
  args.file_path = "C:\\Users\\idowe\\source\\repos\\Project1\\Project1\\a.exe";
  auto module = LoadLibraryA(args.file_path.c_str());
  void *endlessThreadProc = GetProcAddress(module, "endlessThread");
  g_thread = std::thread((void (*)(void *, void *))endlessThreadProc,
                         (void *)OpenEventA, (void *)SetEvent);
  Sleep(100);
  SuspendThread(g_thread.native_handle());
  args.getThreadId = getThreadId;
  args.readMemory = ReadMemory;
  args.writeMemory = WriteMemory;
  args.resumeThread = resumeThread;
  args.suspendFunc = suspedThread;
  args.start_address = module;
  args.stream = std::make_shared<Stream2>();
  args.getRegisterValue = getRegisterValue;
  args.setRegisterValue = setRegisterValue;
  run(args);
}