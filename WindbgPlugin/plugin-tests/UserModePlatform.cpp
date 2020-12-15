#include "Config.h"
#include "UserModePlatform.h"
#include "FunctionRunManager.h"
#include "eh_data.h"
#include <Windows.h>
#include <algorithm>
#include <filesystem>
#include <optional>
#include <psapi.h>
#include <stdexcept>
#include <vector>
#include "blink/Server.h"
void *UserModePlatform::allocateMemory(size_t size) {
  char *data = new char[size];
  DWORD dummy;
  VirtualProtect(data, size, PAGE_EXECUTE_READWRITE, &dummy);
  return data;
}

void UserModePlatform::deallocateMemory(void *data) { delete []data; }

void UserModePlatform::addBp(void *addr) {}

int UserModeThread::getThreadId() { return GetThreadId(m_threadHandle); };

size_t UserModePlatform::readMemory(void *addr, void *buf, size_t size) {
  memcpy(buf, (void *)addr, size);
  return size;
}

size_t UserModePlatform::writeMemory(void *addr, const void *buf, size_t size) {
  memcpy(addr, buf, size);
  return size;
}

void UserModeThread::resumeThread() { ResumeThread(m_threadHandle); }

UserModeThread::UserModeThread(void *threadHandle, void *moduleHandle) {
  m_threadHandle = threadHandle;
  m_module = moduleHandle;
}

bool UserModeThread::initialize() { return true; }

void UserModeThread::suspendThread() { SuspendThread(m_threadHandle); }

bool UserModePlatform::runThreadPlan() {
  auto thread = getCurrentThread();
  auto event =
      g_functionRunManager.registerForBpHittedForTid(thread->getThreadId());
  thread->resumeThread();
  g_functionRunManager.waitForFunctionToEnd(event,
                                            getCurrentThread()->getThreadId());

  Sleep(100);
  thread->suspendThread();
  return true;
}

std::vector<std::shared_ptr<LoadedDll>> UserModePlatform::getModules() {
  auto process = GetCurrentProcess();
  HMODULE hMods[1024];
  DWORD cbNeeded = 0;
  std::vector<std::shared_ptr<LoadedDll>> modules;
  if (EnumProcessModules(process, hMods, sizeof(hMods), &cbNeeded)) {

    for (int i = 0; i < (cbNeeded / sizeof(HMODULE)); i++) {
      char szModName[MAX_PATH];

      // Get the full path to the module's file.

      if (GetModuleFileNameExA(process, hMods[i], szModName,
                               sizeof(szModName))) {
        modules.push_back(std::make_shared<LoadedDll>(
            std::filesystem::path(szModName).filename().string(),
            (void *)hMods[i], LoadedDll::LoadedDynamically::NOT_DYNAMIC));
      }
    }
  }
  return modules;
}

std::bitset<128>
UserModeThread::getRegisterValue(const std::string &registerName,
                                 int frameIndex) {
  std::bitset<128> value;
  CONTEXT context;
  context.ContextFlags = CONTEXT_ALL;
  GetThreadContext(m_threadHandle, &context);
  auto runTimeInfoTable = getRunTimeTable((size_t)m_module);
  void *establisherFrame = nullptr;
  for (int i = 0; i < frameIndex; i++) {

    auto runTimeInfoOptional = runTimeInfoTable->findRunTime(context.Rip);
    if (!runTimeInfoOptional) {
      // Assume leaf function.
      context.Rip = (ULONG64)(*(PULONG64)context.Rsp);
      context.Rsp += 8;
      continue;
    }
    auto runTimeInfo = runTimeInfoOptional.value();
    void *handlerData = nullptr;
    RtlVirtualUnwind(UNW_FLAG_NHANDLER, (size_t)m_module, context.Rip,
                     (PRUNTIME_FUNCTION)&runTimeInfo, &context, &handlerData,
                     (PDWORD64)&establisherFrame, nullptr);
  }
  std::string registerNameLower = registerName;
  std::transform(registerNameLower.begin(), registerNameLower.end(),
                 registerNameLower.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  if (registerNameLower == "rax") {
    return context.Rax;
  } else if (registerNameLower == "rbx") {
    return context.Rbx;
  } else if (registerNameLower == "rcx") {
    return context.Rcx;
  } else if (registerNameLower == "rdx") {
    return context.Rdx;
  } else if (registerNameLower == "rdi") {
    return context.Rdi;
  } else if (registerNameLower == "rsi") {
    return context.Rsi;
  } else if (registerNameLower == "r8") {
    return context.R8;
  } else if (registerNameLower == "r9") {
    return context.R9;
  } else if (registerNameLower == "r10") {
    return context.R10;
  } else if (registerNameLower == "r11") {
    return context.R11;
  } else if (registerNameLower == "r12") {
    return context.R12;
  } else if (registerNameLower == "r13") {
    return context.R13;
  } else if (registerNameLower == "r14") {
    return context.R14;
  } else if (registerNameLower == "r15") {
    return context.R15;
  } else if (registerNameLower == "rbp") {
    return context.Rbp;
  } else if (registerNameLower == "rsp") {
    return context.Rsp;
  } else if (registerNameLower == "rip") {
    return context.Rip;
  } else if (registerNameLower == "eflags") {
    return context.EFlags;
  } else if (registerNameLower == "xmm0") {
    memcpy(&value, &context.Xmm0, 16);
  } else if (registerNameLower == "xmm1") {
    memcpy(&value, &context.Xmm1, 16);
  } else if (registerNameLower == "xmm2") {
    memcpy(&value, &context.Xmm2, 16);
  } else if (registerNameLower == "xmm3") {
    memcpy(&value, &context.Xmm3, 16);
  } else if (registerNameLower == "xmm4") {
    memcpy(&value, &context.Xmm4, 16);
  } else if (registerNameLower == "xmm5") {
    memcpy(&value, &context.Xmm5, 16);
  } else if (registerNameLower == "xmm6") {
    memcpy(&value, &context.Xmm6, 16);
  } else if (registerNameLower == "xmm7") {
    memcpy(&value, &context.Xmm7, 16);
  } else if (registerNameLower == "xmm8") {
    memcpy(&value, &context.Xmm8, 16);
  } else if (registerNameLower == "xmm9") {
    memcpy(&value, &context.Xmm9, 16);
  } else if (registerNameLower == "xmm10") {
    memcpy(&value, &context.Xmm10, 16);
  } else if (registerNameLower == "xmm11") {
    memcpy(&value, &context.Xmm11, 16);
  } else if (registerNameLower == "xmm12") {
    memcpy(&value, &context.Xmm12, 16);
  } else if (registerNameLower == "xmm13") {
    memcpy(&value, &context.Xmm13, 16);
  } else if (registerNameLower == "xmm14") {
    memcpy(&value, &context.Xmm14, 16);
  } else if (registerNameLower == "xmm15") {
    memcpy(&value, &context.Xmm15, 16);
  } else {
    throw std::runtime_error("register name is invalid " + registerNameLower);
  }
  return value;
}

void UserModeThread::setRegisterValue(const std::string &registerName,
                                      const std::bitset<128> &value) {
  CONTEXT context;
  context.ContextFlags = CONTEXT_ALL;
  GetThreadContext(m_threadHandle, &context);
  std::string registerNameLower = registerName;

  std::transform(registerNameLower.begin(), registerNameLower.end(),
                 registerNameLower.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  if (registerNameLower == "rax") {
    context.Rax = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rbx") {
    context.Rbx = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rcx") {
    context.Rcx = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rdx") {
    context.Rdx = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rdi") {
    context.Rdi = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rsi") {
    context.Rsi = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "r8") {
    context.R8 = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "r9") {
    context.R9 = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "r10") {
    context.R10 = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "r11") {
    context.R11 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerNameLower == "r12") {
    context.R12 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerNameLower == "r13") {
    context.R13 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerNameLower == "r14") {
    context.R14 = (DWORD64)(DWORD64)value.to_ullong();
  } else if (registerNameLower == "r15") {
    context.R15 = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rbp") {
    context.Rbp = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rsp") {
    context.Rsp = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "rip") {
    context.Rip = (DWORD64)value.to_ullong();
  } else if (registerNameLower == "eflags") {
    context.EFlags = value.to_ulong();
  } else if (registerNameLower == "xmm0") {
    memcpy(&context.Xmm0, &value, 16);
  } else if (registerNameLower == "xmm1") {
    memcpy(&context.Xmm1, &value, 16);
  } else if (registerNameLower == "xmm2") {
    memcpy(&context.Xmm2, &value, 16);
  } else if (registerNameLower == "xmm3") {
    memcpy(&context.Xmm3, &value, 16);
  } else if (registerNameLower == "xmm4") {
    memcpy(&context.Xmm4, &value, 16);
  } else if (registerNameLower == "xmm5") {
    memcpy(&context.Xmm5, &value, 16);
  } else if (registerNameLower == "xmm6") {
    memcpy(&context.Xmm6, &value, 16);
  } else if (registerNameLower == "xmm7") {
    memcpy(&context.Xmm7, &value, 16);
  } else if (registerNameLower == "xmm8") {
    memcpy(&context.Xmm8, &value, 16);
  } else if (registerNameLower == "xmm9") {
    memcpy(&context.Xmm9, &value, 16);
  } else if (registerNameLower == "xmm10") {
    memcpy(&context.Xmm10, &value, 16);
  } else if (registerNameLower == "xmm11") {
    memcpy(&context.Xmm11, &value, 16);
  } else if (registerNameLower == "xmm12") {
    memcpy(&context.Xmm12, &value, 16);
  } else if (registerNameLower == "xmm13") {
    memcpy(&context.Xmm13, &value, 16);
  } else if (registerNameLower == "xmm14") {
    memcpy(&context.Xmm14, &value, 16);
  } else if (registerNameLower == "xmm15") {
    memcpy(&context.Xmm15, &value, 16);
  } else {
    throw std::runtime_error("register name is invalid " + registerNameLower);
  }
  SetThreadContext(m_threadHandle, &context);
}

std::shared_ptr<PlatformThread> UserModeThreadFactory::create(int tid) {
  auto thread = std::make_shared<UserModeThread>(
      OpenThread(THREAD_ALL_ACCESS, false, tid),
      GetModuleHandleA(g_config.executableModuleName.c_str()));
  thread->initialize();
  return thread;
}

