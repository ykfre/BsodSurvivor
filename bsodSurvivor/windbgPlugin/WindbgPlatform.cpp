#include "WindbgPlatform.h"
#include <algorithm>
#pragma warning(push, 0)
#include "ExtClass.h"
#pragma warning(pop, 0)
#include "FunctionRunManager.h"
#include "Logger.h"
#include "Utils.h"
#include "blink/blink.h"
#include <engextcpp.hpp>
#include <sstream>

void WindbgPlatform::addBp(void *addr) {
  PDEBUG_BREAKPOINT bp = nullptr;
  ULONG breakPointsNum = 0;
  g_ExtInstance.g_control->GetNumberBreakpoints(&breakPointsNum);
  for (uint32_t i = 0; i < breakPointsNum; i++) {
    g_ExtInstance.g_control->GetBreakpointByIndex(i, &bp);
    ULONG64 offset = 0;
    bp->GetOffset(&offset);
    if ((void *)offset == addr) {
      return;
    }
  }
  g_ExtInstance.g_control->AddBreakpoint(DEBUG_BREAKPOINT_CODE, DEBUG_ANY_ID,
                                         &bp);
  ULONG bpFlags;
  bp->GetFlags(&bpFlags);
  bpFlags |= DEBUG_BREAKPOINT_ENABLED | DEBUG_BREAKPOINT_ADDER_ONLY |
             DEBUG_BREAKPOINT_GO_ONLY;
  auto hres = bp->SetFlags(bpFlags);
  abortIfFalse(SUCCEEDED(hres), "failed to set bp");
  bp->SetOffset(size_t(addr));
  g_ExtInstance.m_bpAndCounters[(size_t)addr] += 1;
}

WindbgPlatform::WindbgPlatform() {}

void *WindbgPlatform::allocateMemory(size_t size) {

  if (!g_ExtInstance.isKernelDebugger()) {
    std::stringstream command;
    g_ExtInstance.t_output.clear();
    command << ".dvalloc " << std::hex << size;
    if (!SUCCEEDED(g_ExtInstance.t_control->Execute(
            DEBUG_OUTCTL_THIS_CLIENT, command.str().c_str(), 0))) {
      return nullptr;
    }
    size_t index = g_ExtInstance.t_output.m_text.rfind(" ");
    if (index == (size_t)-1) {
      return nullptr;
    }
    std::string text = g_ExtInstance.t_output.m_text.substr(index + 1);
    text.erase(std::remove(text.begin(), text.end(), '`'), text.end());
    text.erase(std::remove(text.begin(), text.end(), '\n'), text.end());
    std::stringstream ss;
    ss << "0x" << text;
    size_t address;
    ss >> std::hex >> address;
    return (void *)address;
  } else {
    constexpr int NonPagedPool = 0;
    void *mallocAddr = g_blink.getSymbol("ExAllocatePool");
    abortIfFalse(mallocAddr, "not found allocate function");
    if (!mallocAddr) {
      return nullptr;
    }
    auto allocated_addr = runFunc(mallocAddr, {NonPagedPool, size});
    std::stringstream ss;
    ss << std::hex << (size_t)allocated_addr;
    writeLog("allocate memory in " + ss.str() + " with size " +
             std::to_string(size));

    return (void *)allocated_addr;
  }
}

void WindbgPlatform::deallocateMemory(void *address) {
  if (!g_ExtInstance.isKernelDebugger()) {
    std::stringstream command;
    command << ".dvfree 0x" << std::hex << (size_t)address << " 0";
    auto result = g_ExtInstance.t_control->Execute(DEBUG_OUTCTL_THIS_CLIENT,
                                                   command.str().c_str(), 0);
    abortIfFalse(SUCCEEDED(result), "deallocate failed");
  } else {
    std::stringstream ss;
    ss << std::hex << (size_t)address;
    writeLog("free memory in " + ss.str());
    void *freeAddr = g_blink.getSymbol("ExFreePool");
    abortIfFalse(freeAddr, "not found deallocate function");
    g_platform->runFunc((void *)freeAddr, {(size_t)address});
  }
}

int WindbgThread::getThreadId() {
  return getRegisterValue("$tid", 0).to_ulong();
}

bool WindbgPlatform::isUserMode() { return !g_ExtInstance.isKernelDebugger(); }

std::vector<std::string> WindbgPlatform::getNeededSymbolNames() {
  if (g_ExtInstance.isKernelDebugger()) {
    auto allocateSymbols =
        std::vector<std::string>{"ExAllocatePool", "ExFreePool"};
    auto oldNeededSymbols = Platform::getNeededSymbolNames();
    auto newSymbols = allocateSymbols;
    newSymbols.insert(newSymbols.end(), oldNeededSymbols.begin(),
                      oldNeededSymbols.end());
    return newSymbols;
  }
  return Platform::getNeededSymbolNames();
}

std::bitset<128> WindbgThread::getRegisterValue(const std::string &registerName,
                                                int frameIndex) {
  ULONG index;

  std::string registerNameLower = getCorrectRegisterName(registerName);
  DEBUG_VALUE value;
  HRESULT result = g_ExtInstance.t_registers->GetIndexByName(
      registerNameLower.c_str(), &index);

  if (!SUCCEEDED(result)) {
    result = g_ExtInstance.t_registers2->GetPseudoIndexByName(
        registerNameLower.c_str(), &index);
    abortIfFalse(SUCCEEDED(result),
                 "failed get index value " + registerNameLower);

    g_ExtInstance.t_registers2->GetPseudoValues(DEBUG_REGSRC_FRAME, 1, nullptr,
                                                index, &value);
    abortIfFalse(SUCCEEDED(result), "failed get index value " + registerName);
    std::bitset<128> Returnvalue;
    int registerSize = 8;
    if (registerNameLower.find("xmm") != -1) {
      registerSize = 16;
    }
    memcpy(&Returnvalue, value.RawBytes, registerSize);
    return Returnvalue;
  }
  abortIfFalse(SUCCEEDED(g_ExtInstance.t_control->Execute(
                   DEBUG_OUTCTL_THIS_CLIENT, "rm 0x839 ", 0)),
               "rm failed");
  g_ExtInstance.t_output.clear();
  abortIfFalse(
      SUCCEEDED(g_ExtInstance.t_control->Execute(
          DEBUG_OUTCTL_THIS_CLIENT,
          std::string(".frame /r " + std::to_string(frameIndex)).c_str(), 0)),
      ".frame failed");
  abortIfFalse(SUCCEEDED((g_ExtInstance.t_control->Execute(
                   DEBUG_OUTCTL_THIS_CLIENT, "rm 0x2 ", 0))),
               "rm 2 failed");
  return getRegistersFromOutput(g_ExtInstance.t_output.m_text)
      .at(registerNameLower);
}

void WindbgThread::setRegisterValue(const std::string &registerName,
                                    const std::bitset<128> &value) {

  DEBUG_VALUE debugValue;
  std::string registerNameLower = getCorrectRegisterName(registerName);
  int registerSize = 8;
  int type = 4;
  if (registerNameLower.find("xmm") != -1) {
    registerSize = 16;
    type = 0xb;
  }

  memcpy(debugValue.RawBytes, &value, registerSize);
  ULONG index = 0;
  HRESULT result = g_ExtInstance.t_registers->GetIndexByName(
      registerNameLower.c_str(), &index);
  if (!SUCCEEDED(result)) {
    result = g_ExtInstance.t_registers2->GetPseudoIndexByName(
        registerNameLower.c_str(), &index);
    abortIfFalse(SUCCEEDED(result),
                 "failed set index name " + registerNameLower);
    abortIfFalse(SUCCEEDED(g_ExtInstance.t_registers2->SetPseudoValues(
                     DEBUG_REGSRC_FRAME, 1, nullptr, index, &debugValue)),
                 "failed set index name " + registerNameLower);
  } else {
    debugValue.Type = type;
    result = g_ExtInstance.t_registers2->SetValue(index, &debugValue);
  }
  abortIfFalse(SUCCEEDED(result), "failed set index name " + registerNameLower);
}

void WindbgThread::resumeThread() {
  auto result = g_ExtInstance.t_control->Execute(DEBUG_OUTPUT_NORMAL, "g", 0);

  abortIfFalse(SUCCEEDED(result), "resuming failed");
}

size_t WindbgPlatform::readMemory(void *addr, void *buf, size_t size) {
  ULONG bytesRead = 0;
  g_ExtInstance.t_debug->ReadVirtual((size_t)addr, buf, (uint32_t)size,
                                     &bytesRead);
  return size;
}

size_t WindbgPlatform::writeMemory(void *addr, const void *buf, size_t size) {
  ULONG bytesRead = 0;
  if (!SUCCEEDED(g_ExtInstance.t_debug->WriteVirtual(
          (size_t)addr, (void *)buf, (uint32_t)size, &bytesRead)) ||
      bytesRead != size) {
    std::stringstream ss;
    ss << "write failed in " << std::hex << addr << " from " << (size_t)buf
       << "with size " << size;
    writeLog(ss.str());
    return 0;
  }
  return bytesRead;
}

std::string
WindbgThread::getCorrectRegisterName(const std::string &registerName) {
  std::string registerNameLower = registerName;

  std::transform(registerNameLower.begin(), registerNameLower.end(),
                 registerNameLower.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  if (registerNameLower == "eflags") {
    registerNameLower = "efl";
  }
  return registerNameLower;
}

std::map<std::string, std::bitset<128>>
WindbgThread::getRegistersFromOutput(const std::string &windbgOutput) {
  std::map<std::string, std::bitset<128>> result;
  auto lines = splitString(windbgOutput, "\n");
  for (const auto &line : lines) {
    auto splittedBySpaces = splitString(line, " ");
    for (const auto &splitted : splittedBySpaces) {
      auto splitted2 = splitString(splitted, "=");
      if (splitted2.size() != 2) {
        continue;
      }
      auto registerName = splitted2.at(0);
      if (registerName.find("xmm") != -1) {
        std::bitset<128> oldValue;
        for (int i = 0; i < 2; i++) {
          std::uint64_t num;
          std::stringstream ss;
          ss << splittedBySpaces.at(1 + i);
          ss >> num;
          auto value = std::bitset<128>(num);
          oldValue = oldValue << 64;
          oldValue |= value;
        }
        result[registerName] = oldValue;
      } else {
        std::bitset<128> oldValue;
        for (int i = 0; i < ((double)splitted2.at(1).size()) / 16; i++) {
          std::uint64_t num;
          auto numSizeInHex = min(16, splitted2.at(1).size() - i * 16);
          auto hexString = splitted2.at(1).substr(i * 16, numSizeInHex);
          std::stringstream ss;
          ss << std::hex << hexString;
          ss >> num;
          auto value = std::bitset<128>(num);
          oldValue = oldValue << 64;
          oldValue |= value;
        }
        result[registerName] = oldValue;
      }
    }
  }
  return result;
}

std::vector<std::shared_ptr<LoadedDll>> WindbgPlatform::getModules() {
  ULONG moudlesNum = 0;
  ULONG unloadedModuleNum = 0;
  g_ExtInstance.t_symbols3->GetNumberModules(&moudlesNum, &unloadedModuleNum);
  std::vector<std::shared_ptr<LoadedDll>> modules;
  for (int i = 0; i < static_cast<int>(moudlesNum); i++) {
    ULONG64 moduleStart = 0;
    g_ExtInstance.t_symbols->GetModuleByIndex(i, &moduleStart);
    std::string moduleName;
    const int MAX_NAME = 1024;
    moduleName.resize(MAX_NAME);
    ULONG nameSize;
    if (!SUCCEEDED(g_ExtInstance.t_symbols3->GetModuleNameString(
            DEBUG_MODNAME_MODULE, DEBUG_ANY_ID, moduleStart,
            (char *)moduleName.c_str(), MAX_NAME, &nameSize))) {
      continue;
    }
    moduleName.resize(nameSize);
    moduleName = std::string(moduleName.c_str());

    std::transform(moduleName.begin(), moduleName.end(), moduleName.begin(),
                   [](unsigned char c) { return std::tolower(c); });
    DEBUG_MODULE_PARAMETERS modParams = {};
    if (!SUCCEEDED(g_ExtInstance.t_symbols->GetModuleParameters(
            1, &moduleStart, 0, &modParams))) {
      continue;
    }
    modules.push_back(
        std::make_shared<LoadedDll>(moduleName, (void *)moduleStart,
                                    LoadedDll::LoadedDynamically::NOT_DYNAMIC));
  }
  return modules;
}

bool WindbgPlatform::runThreadPlan() {
  addBp(getFunctionToBreakAddress());
  auto thread = getCurrentThread();
  int tid = thread->getThreadId();
  auto event = g_functionRunManager.registerForBpHittedForTid(tid);
  thread->resumeThread();
  g_functionRunManager.waitForFunctionToEnd(event, tid);
  return true;
}

bool WindbgThread::initialize() {
  return SUCCEEDED(g_ExtInstance.initializeThreadGlobals());
}

void WindbgThread::showThreadInfo() {
  auto frame =
      g_platform->getCurrentThread()->getRegisterValue("$frame", 0).to_ulong();
  g_ExtInstance.t_control->Execute(DEBUG_OUTCTL_ALL_CLIENTS, ".thread", 0);
  g_ExtInstance.t_control->Execute(DEBUG_OUTCTL_ALL_CLIENTS, "!irql", 0);
  g_ExtInstance.t_control->Execute(
      DEBUG_OUTCTL_THIS_CLIENT, (".frame " + std::to_string(frame)).c_str(), 0);
}

std::shared_ptr<PlatformThread> WindbgThreadFactory::create(int tid) {
  auto thread = std::make_shared<WindbgThread>();
  thread->initialize();
  return thread;
}
