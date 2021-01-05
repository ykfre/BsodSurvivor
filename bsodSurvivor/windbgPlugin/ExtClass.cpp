#pragma warning(push, 0)
#include "ExtClass.h"
#include "Commands.h"
#include "CommonCommandArgs.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "Utils.h"
#include "WindbgLogger.h"
#include "WindbgPlatform.h"
#include "blink/Server.h"
#include "blink/blink.h"
#include <Windows.h>
#include <algorithm>
#include <codecvt>
#include <easyhook/easyhook.h>
#include <filesystem>
#include <iostream>
#include <locale>
#include <sstream>
#include <string>
#pragma warning(pop)
void releaseHook(void **arg) {
  if (arg) {
    if (((HOOK_TRACE_INFO *)arg)->Link) {
      LhUninstallHook((HOOK_TRACE_INFO *)arg);
    }
  }
}

template <typename T> void release(T *arg) {
  if (arg) {
    arg->Release();
  }
}

template <typename T> std::shared_ptr<T> createUnknown(T *arg) {
  return std::shared_ptr<T>(arg, release<T>);
}

ExtExtension *g_ExtInstancePtr = &g_ExtInstance;

void EXT_CLASS::Uninitialize() {}

void EXT_CLASS::log(const std::string &output) {
  if (t_control) {
    t_control->Output(DEBUG_OUTPUT_NORMAL, (output + "\n").c_str());
  }
}

void EXT_CLASS::onLoadDynamicModule(const std::shared_ptr<LoadedDll> &dll) {
  writeLog("loading module to windbg modules");
  std::stringstream command;
  command << ".reload /f " << dll->getName() << "=" << std::hex
          << dll->getStartAddress();
  writeLog("loading module " + command.str());
  auto res = SUCCEEDED(g_ExtInstance.t_control->Execute(
      DEBUG_OUTCTL_THIS_CLIENT, command.str().c_str(), 0));
  assert(res);
}

void EXT_CLASS::onUnLoadDynamicModule(const std::shared_ptr<LoadedDll> &dll) {
  auto thread = g_threadFactory->create(0);
  std::stringstream command;
  command << ".reload /u " << dll->getName();
  writeLog("unload module " + command.str());
  auto res = SUCCEEDED(g_ExtInstance.t_control->Execute(
      DEBUG_OUTCTL_THIS_CLIENT, command.str().c_str(), 0));
  assert(res);
}

HRESULT EXT_CLASS::initializeThreadGlobals() {
  t_logger = std::make_shared<WindbgLogger>();
  IDebugClient5 *debugClient5 = nullptr;
  ::HRESULT hr = ::DebugCreate(__uuidof(::IDebugClient5),
                               reinterpret_cast<void **>(&debugClient5));
  if (FAILED(hr)) {
    return hr;
  }
  t_debugClient5 = createUnknown(debugClient5);

  IDebugClient *debugClient = nullptr;
  auto result = t_debugClient5->CreateClient(&debugClient);
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_debugClient = createUnknown(debugClient);
  IDebugControl *control = nullptr;
  result = t_debugClient->QueryInterface(__uuidof(IDebugControl),
                                         reinterpret_cast<void **>(&control));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_control = createUnknown(control);
  IDebugSymbols *symbols = nullptr;
  result = t_debugClient->QueryInterface(__uuidof(IDebugSymbols),
                                         reinterpret_cast<void **>(&symbols));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_symbols = createUnknown(symbols);

  IDebugSymbols3 *symbols3 = nullptr;
  result = t_debugClient->QueryInterface(__uuidof(IDebugSymbols3),
                                         reinterpret_cast<void **>(&symbols3));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_symbols3 = createUnknown(symbols3);

  IDebugRegisters *registers = nullptr;
  result = t_debugClient->QueryInterface(__uuidof(IDebugRegisters),
                                         reinterpret_cast<void **>(&registers));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_registers = createUnknown(registers);

  IDebugRegisters2 *registers2 = nullptr;
  result = t_debugClient->QueryInterface(
      __uuidof(IDebugRegisters2), reinterpret_cast<void **>(&registers2));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_registers2 = createUnknown(registers2);

  IDebugDataSpaces *data = nullptr;
  result = t_debugClient->QueryInterface(__uuidof(IDebugDataSpaces),
                                         reinterpret_cast<void **>(&data));
  if (!SUCCEEDED(result)) {
    return result;
  }
  t_debug = createUnknown(data);
  t_debugClient->SetOutputMask(t_output.SupportedMask());
  t_debugClient->SetOutputCallbacks(&t_output);
  return 0;
}

std::shared_ptr<IDebugClient> g_debugClient;

HRESULT EXT_CLASS::Initialize() {
  t_logger = std::make_shared<WindbgLogger>();
  HRESULT result = initializeThreadGlobals();

  if (!SUCCEEDED(result)) {
    log("failed to initialize windbg globals");
    return -1;
  }
  m_event = std::shared_ptr<size_t>(
      (size_t *)CreateEventA(nullptr, false, false, "lldb-windbg"),
      [](size_t *handle) {
        if (handle) {
          CloseHandle(handle);
        }
      });

  if (!m_event) {
    writeLog("failed to create bsod survivor event");
    return -1;
  } else if (GetLastError() == ERROR_ALREADY_EXISTS) {
    writeLog(
        "another bsod survivor plugin already exist - please unload it first");
    return -1;
  }

  auto configFilePath = getConfigFilePath();
  if (!g_config.load(configFilePath)) {
    return -1;
  }

  auto server = createServer(g_config.serverPort);
  if (!server.server) {
    writeLog("failed to load rpc server, becaues port is in use: " +
             std::to_string(g_config.serverPort));
    return -1;
  }
  writeLog("loaded rpc server");
  auto processToInjectTo = getParentProccessPid();
  std::string dllToHook = getWindbgDir() + "\\CreateFileHookDll.dll";
  if (!std::filesystem::exists(dllToHook)) {
    writeLog("didn't find hook dll " + dllToHook);
    return -1;
  }
  writeLog("trying loading hook dll " + dllToHook);
  bool injectionRes =
      loadRemoteDLL(OpenProcess(PROCESS_ALL_ACCESS, false, processToInjectTo),
                    dllToHook.c_str());

  if (!injectionRes) {
    writeLog("failed to inject process for create file.");
    return -1;
  }
  writeLog("loaded create file hook");
  g_blink.m_onLoadModule.push_back(
      [this](const std::shared_ptr<LoadedDll> &dll) {
        onLoadDynamicModule(dll);
      });

  g_blink.m_onUnloadModule.push_back(
      [this](const std::shared_ptr<LoadedDll> &dll) {
        onUnLoadDynamicModule(dll);
      });
  g_platform = std::make_shared<WindbgPlatform>();
  g_threadFactory = std::make_shared<WindbgThreadFactory>();

  commands::initializeLLdbGlobals();

  std::thread t([server]() { server.server->Wait(); });
  t.detach();

  ExtensionApis.nSize = sizeof(ExtensionApis);
  g_control = t_control;
  result = g_control->GetWindbgExtensionApis64(&ExtensionApis);
  if (!SUCCEEDED(result)) {
    return result;
  }
  g_debugClient = t_debugClient;
  result = g_debugClient->SetEventCallbacks(&m_debugEvents);
  if (!SUCCEEDED(result)) {
    return result;
  }
  writeLog("finished initializing successfully");
  return 0;
}

std::string EXT_CLASS::getWindbgDir() const {
  std::string modulePath;
  modulePath.resize(MAX_PATH);
  auto currentModule = GetModuleHandleA(nullptr);

  auto modulePathSize = GetModuleFileNameA(
      currentModule, (char *)modulePath.c_str(), modulePath.size());
  modulePath.resize(modulePathSize + 1);
  return std::filesystem::path(modulePath).parent_path().string()+"\\winext";
}

std::string EXT_CLASS::getConfigFilePath() const {
  auto dir = getWindbgDir();
  return dir + "\\config.json";
}

void EXT_CLASS::executeCommand(
    const std::function<bool(CommonCommandArgs &)> &command) {
  std::thread t([this, command]() {
    g_platform->setCurrentThread(g_threadFactory->create(0));

    if (!g_platform->verifyPreConditions()) {
      log("failed to verify pre conditions");
      return;
    }

    CommonCommandArgs commonArgs;
    auto thread = g_platform->getCurrentThread();
    commonArgs.selectedFrameIndex =
        thread->getRegisterValue("$frame", 0).to_ulong();

    command(commonArgs);
  });
  t.detach();
}

bool EXT_CLASS::isKernelDebugger() {
  ULONG Class;
  ULONG Qualifier;
  t_control->GetDebuggeeType(&Class, &Qualifier);
  return DEBUG_CLASS_KERNEL == Class;
}

EXT_COMMAND(reload_config, "reload config.json again", "") {
  auto configFilePath = getConfigFilePath();
  if (!g_config.load(configFilePath)) {
    return;
  }
  g_blink.resetDllToChange();
}

EXT_COMMAND(return_without, "return from current frame without calling destructors", "") {
  executeCommand([](CommonCommandArgs &args) {
    return commands::returnFromFrame(args, 1, false);
  });
}

EXT_COMMAND(return_with, "return from current frame with calling destructors", "") {
  executeCommand([](CommonCommandArgs &args) {
    return commands::returnFromFrame(args, 1, true);
  });
}

EXT_COMMAND(return_to_frame_without,
            "return to the selected frame without calling destrcutors", "") {
  executeCommand([](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;

    auto thread = g_platform->getCurrentThread();
    return commands::returnFromFrame(
        args, thread->getRegisterValue("$frame", 0).to_ulong(), false);
  });
}

EXT_COMMAND(return_to_frame_with,
            "return to the selected frame with calling destrcutors", "") {
  executeCommand([](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;
    auto thread = g_platform->getCurrentThread();
    return commands::returnFromFrame(
        args, thread->getRegisterValue("$frame", 0).to_ulong(), true);
  });
}

EXT_COMMAND(jump, " Jump to a previous line in the same function, including calling needed destructors",
            "{;s;lineNumber;line number in decimal representation}") {
  auto raw = GetUnnamedArgStr(0);
  std::istringstream ss(raw);
  uint32_t line;
  ss >> line;
  if (ss.fail()) {
    writeLog("line isn't a decimal number although it should be - please give "
             "a decimal number");
  }
  executeCommand([line, this](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;
    commands::jumpTo(args, line);
    return true;
  });
}

EXT_COMMAND(reload_dynamic_modules, "Make Windbg reload dynamic modules again, useful when you did .reload /f and Windbg removed the dynamic modules.", "") {
  g_platform->setCurrentThread(g_threadFactory->create(0));
  for (const auto &module : g_blink.getDynamicDlls()) {
    g_ExtInstance.onLoadDynamicModule(module);
  }
}

EXT_COMMAND(reset_saved_files, "reset saved files", "") {
  g_blink.resetSavedFiles();
}