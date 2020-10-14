#pragma warning(push, 0)
#include "ExtClass.h"
#include "Commands.h"
#include "CommonCommandArgs.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "Module.h"
#include "Utils.h"
#include "WindbgLogger.h"
#include "WindbgPlatform.h"
#include <algorithm>
#include <iostream>
#include <sstream>
#include <string>
#include <strstream>

#pragma warning(pop)

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
  t_control->Output(DEBUG_OUTPUT_NORMAL, (output + "\n").c_str());
}

HRESULT EXT_CLASS::initializeGlobals() {
  IDebugClient5 *debugClient5 = nullptr;
  ::HRESULT hr = ::DebugCreate(__uuidof(::IDebugClient5),
                               reinterpret_cast<void **>(&debugClient5));
  if (FAILED(hr)) {
    return hr;
  }
  t_debugClient5.reset(debugClient5);

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
  t_symbols.reset(symbols);

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

HRESULT EXT_CLASS::Initialize() {
  g_logger = std::make_shared<WindbgLogger>();

  if (!g_config.load()) {
    return -1;
  }
  commands::initializeLLdbGlobals();
  HRESULT result = initializeGlobals();
  if (!SUCCEEDED(result)) {
    log("failed to initialize windbg globals");
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
  return 0;
}

std::vector<Module> EXT_CLASS::getModules() {
  ULONG moudlesNum = 0;
  ULONG unloadedModuleNum = 0;
  t_symbols3->GetNumberModules(&moudlesNum, &unloadedModuleNum);
  std::vector<Module> modules;
  for (int i = 0; i < moudlesNum; i++) {
    ULONG64 moduleStart = 0;
    t_symbols->GetModuleByIndex(i, &moduleStart);
    std::string moduleName;
    const int MAX_NAME = 1024;
    moduleName.resize(MAX_NAME);
    ULONG nameSize;
    if (!SUCCEEDED(t_symbols3->GetModuleNameString(
            DEBUG_MODNAME_MODULE, DEBUG_ANY_ID, moduleStart,
            (char *)moduleName.c_str(), MAX_NAME, &nameSize))) {
      continue;
    }
    moduleName.resize(nameSize);
    moduleName = std::string(moduleName.c_str());

    std::transform(moduleName.begin(), moduleName.end(), moduleName.begin(),
                   [](unsigned char c) { return std::tolower(c); });
    DEBUG_MODULE_PARAMETERS modParams = {};
    if (!SUCCEEDED(
            t_symbols->GetModuleParameters(1, &moduleStart, 0, &modParams))) {
      continue;
    }
    modules.push_back({moduleName, moduleStart, modParams.Size});
  }
  return modules;
}

void EXT_CLASS::executeCommand(
    const std::function<bool(CommonCommandArgs &)> &command) {
  std::thread t([this, command]() {
    if (!SUCCEEDED(initializeGlobals())) {
      return;
    }
    log("sarting command");
    CommonCommandArgs commonArgs;
    t_platform = std::make_shared<WindbgPlatform>();
    commonArgs.selectedFrameIndex =
        t_platform->getRegisterValue("$frame", 0).to_ulong();
    auto modules = getModules();
    for (auto &module : modules) {
      std::vector<std::string> validModulesNames = g_config.modulesNames;
      if (std::find(validModulesNames.begin(), validModulesNames.end(),
                    module.moduleName) == validModulesNames.end()) {
        continue;
      }
      auto moduleBuf = module.read();
      commonArgs.modules.push_back(
          {module.moduleName, moduleBuf, module.startAddr});
    }

    t_platform->callAllocateSpaceInStack = [] {
      void *allocateSpaceInStackFuncAddress = nullptr;
      if (!t_platform->findSymbol(g_config.executableModuleName,
                                  g_config.allocateSpaceInStackFunctionName,
                                  allocateSpaceInStackFuncAddress)) {
        return false;
      }

      t_platform->setRegisterValue("rip",
                                   (size_t)allocateSpaceInStackFuncAddress);
      t_platform->addBp(
          reinterpret_cast<char *>(allocateSpaceInStackFuncAddress) + 12);
      g_functionRunManager.registerForBpHittedForTid(t_platform->getThreadId());
      t_platform->resumeThread();
      g_functionRunManager.waitForFunctionToEnd(t_platform->getThreadId());
      return true;
    };
    bool res = command(commonArgs);
    std::string stringResult = "successfully";
    if (!res) {
      stringResult = "unsuccessfully";
    }
    log("finished execute " + stringResult);
  });
  t.detach();
}

bool EXT_CLASS::isKernelDebugger() {
  ULONG Class;
  ULONG Qualifier;
  t_control->GetDebuggeeType(&Class, &Qualifier);
  return DEBUG_CLASS_KERNEL == Class;
}

EXT_COMMAND(execute, "Execute command", "") {
  std::string scriptFilePath = "C:\\Users\\idowe\\Desktop\\temp\\b.txt";
  executeCommand([this, scriptFilePath](CommonCommandArgs &args) {
    auto expression = readFile(scriptFilePath);
    if (!expression) {
      log("failed to read script file: " + scriptFilePath);
      return false;
    }
    return commands::executeExpression(args, expression.value());
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
    return commands::returnFromFrame(
        args, t_platform->getRegisterValue("$frame", 0).to_ulong(), false);
  });
}

EXT_COMMAND(returntoframewith,
            "return to the current frame with calling destrcutors", "") {
  executeCommand([](CommonCommandArgs &args) {
    args.selectedFrameIndex = 0;
    return commands::returnFromFrame(
        args, t_platform->getRegisterValue("$frame", 0).to_ulong(), true);
  });
}
