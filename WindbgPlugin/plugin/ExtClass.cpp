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
  auto res = SUCCEEDED(g_ExtInstance.t_control->Execute(
      DEBUG_OUTCTL_THIS_CLIENT, command.str().c_str(), 0));
  assert(res);
}

void EXT_CLASS::onUnLoadDynamicModule(const std::shared_ptr<LoadedDll> &dll) {
  auto thread = g_threadFactory->create(0);
  std::stringstream command;
  command << ".reload /u " << dll->getName();
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

void *createFileHook(wchar_t *fileName, _In_ DWORD dwDesiredAccess,
                     _In_ DWORD dwShareMode,
                     _In_opt_ LPSECURITY_ATTRIBUTES lpSecurityAttributes,
                     _In_ DWORD dwCreationDisposition,
                     _In_ DWORD dwFlagsAndAttributes,
                     _In_opt_ HANDLE hTemplateFile) {
  std::wstring fileNameString;
  if (fileName) {
    fileNameString = fileName;
    auto absolutePath = std::filesystem::absolute(fileName).string();
    std::lock_guard lock(*g_blink.m_originalFileToNewFileMutex);
    if (g_blink.m_originalFileToNewFile.end() !=
        g_blink.m_originalFileToNewFile.find(absolutePath)) {
      std::wstring_convert<std::codecvt_utf8_utf16<wchar_t>> converter;
      fileNameString =
          converter.from_bytes(g_blink.m_originalFileToNewFile[absolutePath]);
    }
  }

  return CreateFileW(fileNameString.c_str(), dwDesiredAccess, dwShareMode,
                     lpSecurityAttributes, dwCreationDisposition,
                     dwFlagsAndAttributes, hTemplateFile);
}

HRESULT EXT_CLASS::Initialize() {
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
  HRESULT result = initializeThreadGlobals();
  if (!SUCCEEDED(result)) {
    log("failed to initialize windbg globals");
    return -1;
  }
  auto currentModule = GetModuleHandleA(nullptr);
  std::string modulePath;
  modulePath.resize(MAX_PATH);
  auto modulePathSize = GetModuleFileNameA(
      currentModule, (char *)modulePath.c_str(), modulePath.size());
  modulePath.resize(modulePathSize + 1);
  auto dir = std::filesystem::path(modulePath).parent_path();
  if (!g_config.load(dir.string() + "\\config.json")) {
    return -1;
  }
  ExtensionApis.nSize = sizeof(ExtensionApis);
  result = t_control->GetWindbgExtensionApis64(&ExtensionApis);
  if (!SUCCEEDED(result)) {
    return result;
  }
  result = t_debugClient->SetEventCallbacks(&m_debugEvents);
  if (!SUCCEEDED(result)) {
    return result;
  }

  auto hook = new HOOK_TRACE_INFO();
  auto hookRes =
      LhInstallHook(GetProcAddress(GetModuleHandleA("kernel32"), "CreateFileW"),
                    createFileHook, nullptr, hook);
  m_hook = std::shared_ptr<void *>((void **)hook, releaseHook);
  if (FAILED(hookRes)) {
    writeLog("failed to put hook on create file");
    return -1;
  }
  ULONG ACLEntries[1] = {0};
  hookRes = LhSetExclusiveACL(ACLEntries, 0, hook);
  if (FAILED(hookRes)) {
    writeLog("failed to put hook on create file");
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
    writeLog("failed to create lldb-windbg event");
    return -1;
  }
  auto server = createServer(g_config.serverPort);
  if (!server.server) {
    writeLog("failed to load rpc server, becaues port is in use: " +
             std::to_string(g_config.serverPort));
  }
  std::thread t([server]() { server.server->Wait(); });
  t.detach();
  return 0;
}

void EXT_CLASS::executeCommand(
    const std::function<bool(CommonCommandArgs &)> &command) {
  std::thread t([this, command]() {
    if (!g_platform->verifyPreConditions()) {
      log("failed initialize thread globals");
    }
    g_platform->setCurrentThread(g_threadFactory->create(0));
    CommonCommandArgs commonArgs;
    auto thread = g_platform->getCurrentThread();
    commonArgs.selectedFrameIndex =
        thread->getRegisterValue("$frame", 0).to_ulong();
    auto modules = g_blink.getAllDlls();

    g_platform->callAllocateSpaceInStack = [] {
      auto thread = g_platform->getCurrentThread();
      void *allocateSpaceInStackFuncAddress =
          g_blink.getSymbol(g_config.allocateSpaceInStackFunctionName);
      if (!allocateSpaceInStackFuncAddress) {
        return false;
      }

      thread->setRegisterValue("rip", (size_t)allocateSpaceInStackFuncAddress);
      g_platform->addBp(
          reinterpret_cast<char *>(allocateSpaceInStackFuncAddress) + 12);
      auto event =
          g_functionRunManager.registerForBpHittedForTid(thread->getThreadId());
      thread->resumeThread();
      g_functionRunManager.waitForFunctionToEnd(event, thread->getThreadId());
      return true;
    };
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
#include <iostream>
EXT_COMMAND(execute, "Execute command",
            "{;s;expressionFilePath;the file path of the expression}") {
  auto scriptFilePathPointer = GetUnnamedArgStr(0);
  std::string scriptFilePath = scriptFilePathPointer;
  std::cout << scriptFilePath;
  executeCommand([this, scriptFilePath](CommonCommandArgs &args) {
    auto expression = readFile(scriptFilePath);
    if (!expression) {
      log("failed to read script file: " + scriptFilePath);
      return false;
    }
    return commands::executeExpression(
        args,
        std::string{expression.value().begin(), expression.value().end()});
  });
}

EXT_COMMAND(returnwithout, "return from current frame without destructor", "") {
  executeCommand([](CommonCommandArgs &args) {
    return commands::returnFromFrame(args, 1, false);
  });
}

EXT_COMMAND(returnwith, "return from current frame with destructor", "") {
  executeCommand([](CommonCommandArgs &args) {
    return commands::returnFromFrame(args, 1, true);
  });
}

EXT_COMMAND(returntoframewithout,
            "return to the current frame without calling destrcutors", "") {
  executeCommand([](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;

    auto thread = g_platform->getCurrentThread();
    return commands::returnFromFrame(
        args, thread->getRegisterValue("$frame", 0).to_ulong(), false);
  });
}

EXT_COMMAND(returntoframewith,
            "return to the current frame with calling destrcutors", "") {
  executeCommand([](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;
    auto thread = g_platform->getCurrentThread();
    return commands::returnFromFrame(
        args, thread->getRegisterValue("$frame", 0).to_ulong(), true);
  });
}

EXT_COMMAND(reloadblinkmodules, "reload blink modules", "") {
  g_platform->setCurrentThread(g_threadFactory->create(0));
  for (const auto &module : g_blink.getDynamicDlls()) {
    g_ExtInstance.onLoadDynamicModule(module);
  }
}
