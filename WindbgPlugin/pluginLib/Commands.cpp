#pragma comment(lib, "Ws2_32.lib")
#pragma comment(lib, "Rpcrt4.lib")
#pragma comment(lib, "version.lib")
#pragma comment(lib, "dbgeng.lib")
#pragma comment(lib, "dbghelp.lib")

#pragma warning(push, 0)
#include "Api/SystemInitializerFull.h"
#include "FunctionRunManager.h"
#include "CommonCommandArgs.h"
#include "Config.h"
#include "Logger.h"
#include "MCJIT.h"
#include "MyRegisterContext.h"
#include "Platform.h"
#include "Plugins/ABI/X86/ABIWindows_x86_64.h"
#include "Plugins/Architecture/Arm/ArchitectureArm.h"
#include "Plugins/Architecture/Mips/ArchitectureMips.h"
#include "Plugins/Architecture/PPC64/ArchitecturePPC64.h"
#include "Plugins/DynamicLoader/MacOSX-DYLD/DynamicLoaderMacOS.h"
#include "Plugins/DynamicLoader/MacOSX-DYLD/DynamicLoaderMacOSXDYLD.h"
#include "Plugins/DynamicLoader/POSIX-DYLD/DynamicLoaderPOSIXDYLD.h"
#include "Plugins/DynamicLoader/Static/DynamicLoaderStatic.h"
#include "Plugins/DynamicLoader/Windows-DYLD/DynamicLoaderWindowsDYLD.h"
#include "Plugins/Instruction/ARM/EmulateInstructionARM.h"
#include "Plugins/Instruction/ARM64/EmulateInstructionARM64.h"
#include "Plugins/Instruction/MIPS/EmulateInstructionMIPS.h"
#include "Plugins/Instruction/MIPS64/EmulateInstructionMIPS64.h"
#include "Plugins/Instruction/PPC64/EmulateInstructionPPC64.h"
#include "Plugins/JITLoader/GDB/JITLoaderGDB.h"
#include "Plugins/Language/CPlusPlus/CPlusPlusLanguage.h"
#include "Plugins/Language/ObjC/ObjCLanguage.h"
#include "Plugins/Language/ObjCPlusPlus/ObjCPlusPlusLanguage.h"
#include "Plugins/LanguageRuntime/CPlusPlus/ItaniumABI/ItaniumABILanguageRuntime.h"
#include "Plugins/LanguageRuntime/ObjC/AppleObjCRuntime/AppleObjCRuntimeV1.h"
#include "Plugins/LanguageRuntime/ObjC/AppleObjCRuntime/AppleObjCRuntimeV2.h"
#include "Plugins/LanguageRuntime/RenderScript/RenderScriptRuntime/RenderScriptRuntime.h"
#include "Plugins/MemoryHistory/asan/MemoryHistoryASan.h"
#include "Plugins/ObjectContainer/BSD-Archive/ObjectContainerBSDArchive.h"
#include "Plugins/ObjectContainer/Universal-Mach-O/ObjectContainerUniversalMachO.h"
#include "Plugins/ObjectFile/Breakpad/ObjectFileBreakpad.h"
#include "Plugins/ObjectFile/ELF/ObjectFileELF.h"
#include "Plugins/ObjectFile/Mach-O/ObjectFileMachO.h"
#include "Plugins/ObjectFile/PECOFF/ObjectFilePECOFF.h"
#include "Plugins/OperatingSystem/Python/OperatingSystemPython.h"
#include "Plugins/Platform/Android/PlatformAndroid.h"
#include "Plugins/Platform/FreeBSD/PlatformFreeBSD.h"
#include "Plugins/Platform/Linux/PlatformLinux.h"
#include "Plugins/Platform/MacOSX/PlatformMacOSX.h"
#include "Plugins/Platform/MacOSX/PlatformRemoteiOS.h"
#include "Plugins/Platform/NetBSD/PlatformNetBSD.h"
#include "Plugins/Platform/OpenBSD/PlatformOpenBSD.h"
#include "Plugins/Platform/Windows/PlatformWindows.h"
#include "Plugins/Platform/gdb-server/PlatformRemoteGDBServer.h"
#include "Plugins/Process/elf-core/ProcessElfCore.h"
#include "Plugins/Process/gdb-remote/ProcessGDBRemote.h"
#include "Plugins/Process/mach-core/ProcessMachCore.h"
#include "Plugins/Process/minidump/ProcessMinidump.h"
#include "Plugins/ScriptInterpreter/None/ScriptInterpreterNone.h"
#include "Plugins/SymbolFile/Breakpad/SymbolFileBreakpad.h"
#include "Plugins/SymbolFile/DWARF/SymbolFileDWARF.h"
#include "Plugins/SymbolFile/DWARF/SymbolFileDWARFDebugMap.h"
#include "Plugins/SymbolFile/NativePDB/SymbolFileNativePDB.h"
#include "Plugins/SymbolFile/PDB/SymbolFilePDB.h"
#include "Plugins/SymbolFile/Symtab/SymbolFileSymtab.h"
#include "Plugins/SymbolVendor/ELF/SymbolVendorELF.h"
#include "Plugins/SystemRuntime/MacOSX/SystemRuntimeMacOSX.h"
#include "Plugins/TypeSystem/Clang/TypeSystemClang.h"
#include "Plugins/UnwindAssembly/InstEmulation/UnwindAssemblyInstEmulation.h"
#include "Plugins/UnwindAssembly/x86/UnwindAssembly-x86.h"
#include "Plugins\DynamicLoader\Windows-DYLD/DynamicLoaderWindowsDYLD.h"
#include "ReturnFromFrame.h"
#include "blink/blink.h"
#include "Utils.h"
#include "lldb/API/SBDebugger.h"
#include "lldb/Host/HostInfoBase.h"
#include "lldb/Target/DynamicLoader.h"
#include "lldb/Target/Process.h"
#include "lldb/Target/RegisterContext.h"
#include "lldb/Target/Target.h"
#include "lldb/Target/TargetList.h"
#include "lldb/Target/Unwind.h"
#include "lldb/core/Debugger.h"
#include "lldb/core/Module.h"
#include "lldb/core/Section.h"
#include "lldb/lldb-enumerations.h"
#include "lldb/lldb-forward.h"
#include "lldb/lldb-private.h"
#include "lldb/target/target.h"
#include "lldb\lldb-enumerations.h"
#include "llvm\Object\XCOFFObjectFile.h"
#include "plugins/Disassembler/LLVMC/DisassemblerLLVMC.h"
#include "llvm/ADT/None.h"
#include "llvm/Support/TargetSelect.h"
#include <Windows.h>
#include <bitset>
#include <ehdata.h>
#include <fstream>
#include <sstream>
#include <iostream>

#pragma warning(pop)

extern thread_local void *t_bpAddress;
extern thread_local llvm::Optional<std::function<bool()>> t_callAllocateStack;

namespace commands {

class UserIDResolver2 : public lldb_private::UserIDResolver {
  llvm::Optional<std::string> DoGetUserName(id_t uid) {
    UNREFERENCED_PARAMETER(uid);
    return std::string("");
  }
  llvm::Optional<std::string> DoGetGroupName(id_t gid) {
    UNREFERENCED_PARAMETER(gid);
    return std::string("");
  }
};

class Process2 : public lldb_private::Process {
public:
  static std::shared_ptr<Process2>
  create(lldb::TargetSP target_sp, lldb::ListenerSP listener_sp,
         const CommonCommandArgs &args,
         std::vector<std::shared_ptr<LoadedDll>> &modules) {
    auto process = std::make_shared<Process2>(target_sp, listener_sp, args);

    process->SetPublicState(lldb::eStateStopped, false);
    process->m_private_state.SetValue(lldb::eStateStopped);
    process->SetCanRunCode(true);
    auto dynamic_loader = (lldb_private::DynamicLoaderWindowsDYLD *)
        lldb_private::DynamicLoaderWindowsDYLD::CreateInstance(process.get(),
                                                               true);
    bool foundOurModule = false;
    for (const auto &module : modules) {
      lldb_private::FileSpec exeFileSpec(g_config.executablePath);
      auto architecture =
          module->getLLdbModule()->GetArchitecture().GetTriple();
      auto exeModule = lldb::ModuleSP(new lldb_private::Module(
          exeFileSpec,
          lldb_private::ArchSpec(architecture)));
      if (nullptr == module->getLLdbModule()->GetObjectFile() ||
          nullptr == exeModule->GetObjectFile()) {
        continue;
      }
      auto currentModuleSp = module->getLLdbModule();
      if (((ObjectFilePECOFF *)module->getLLdbModule()->GetObjectFile())
              ->GetUUID() ==
          ((ObjectFilePECOFF *)exeModule->GetObjectFile())->GetUUID()) {
        currentModuleSp = exeModule;
        foundOurModule = true;
      }
      dynamic_loader->OnLoadModule(currentModuleSp, lldb_private::ModuleSpec(),
                                   (size_t)module->getStartAddress());
      auto &images = process->GetTarget().GetImages();
      images.Append(currentModuleSp);
    }
    if (!foundOurModule) {
      writeLog("We don't have our module loaded, check the path you given in "
               "configuration");
      return std::shared_ptr<Process2>();
    }
    process->setPath(g_config.executablePath);
    return process;
  }

  void Suspend() { g_platform->getCurrentThread()->suspendThread(); }

  lldb::ExpressionResults
  RunThreadPlan(lldb_private::ExecutionContext &exe_ctx,
                lldb::ThreadPlanSP &thread_plan_sp,
                const lldb_private::EvaluateExpressionOptions &options,
                lldb_private::DiagnosticManager &diagnostic_manager) {
    UNREFERENCED_PARAMETER(diagnostic_manager);
    UNREFERENCED_PARAMETER(options);
    if (g_platform->runThreadPlan()) {
      return lldb::ExpressionResults::eExpressionCompleted;
    }
    return lldb::ExpressionResults::eExpressionSetupError;
  }

  // Check if a given Process
  bool CanDebug(lldb::TargetSP target_sp, bool plugin_specified_by_name) {
    UNREFERENCED_PARAMETER(plugin_specified_by_name);

    return true;
  }

  // PluginInterface protocol
  lldb_private::ConstString GetPluginName() override {
    return lldb_private::ConstString("my plugin");
  };

  uint32_t GetPluginVersion() override { return 1; };

  void RefreshStateAfterStop() override{};

  bool UpdateThreadList(lldb_private::ThreadList &old_thread_list,
                        lldb_private::ThreadList &new_thread_list) override {
    UNREFERENCED_PARAMETER(old_thread_list);
    UNREFERENCED_PARAMETER(new_thread_list);

    return false;
  };

  lldb_private::Status DoDestroy() override { return lldb_private::Status(); };

  // Process Memory
  size_t DoReadMemory(lldb::addr_t addr, void *buf, size_t size,
                      lldb_private::Status &error) override {
    UNREFERENCED_PARAMETER(error);

    g_platform->readMemory((void *)addr, buf, size);
    return size;
  };

  size_t ReadMemory(lldb::addr_t vm_addr, void *buf, size_t size,
                    lldb_private::Status &error) override {
    return DoReadMemory(vm_addr, buf, size, error);
  }

  size_t DoWriteMemory(lldb::addr_t vm_addr, const void *buf, size_t size,
                       lldb_private::Status &error) override {
    UNREFERENCED_PARAMETER(error);
    g_platform->writeMemory((void *)vm_addr, (void *)buf, size);
    return size;
  }

  lldb::addr_t DoAllocateMemory(size_t size, uint32_t permissions,
                                lldb_private::Status &error) override {
    UNREFERENCED_PARAMETER(permissions);
    void *memory = g_platform->allocateMemory(size);
    if (nullptr == memory) {
      error.SetErrorString("not enough memory");
    }
    return (lldb::addr_t)memory;
  }

  lldb_private::Status DoDeallocateMemory(lldb::addr_t ptr) override {
    return lldb_private::Status();
  };

  lldb_private::Status DoResume() override {
    lldb_private::Status error;
    g_platform->getCurrentThread()->resumeThread();
    return error;
  }

  lldb::StackFrameSP CalculateStackFrame() override { return m_frame; }

  void SetStackFrame(lldb::StackFrameSP sp) { m_frame = sp; }

  Process2(lldb::TargetSP target_sp, lldb::ListenerSP listener_sp,
           const CommonCommandArgs &args)
      : lldb_private::Process(target_sp, listener_sp),
        m_CommonCommandArgs(args) {}

private:
  lldb::StackFrameSP m_frame;
  CommonCommandArgs m_CommonCommandArgs;
};

class Platform2 : public lldb_private::Platform {
public:
  Platform2(bool is_host_platform, const CommonCommandArgs &args)
      : lldb_private::Platform(is_host_platform), m_CommonCommandArgs(args) {}
  UserIDResolver2 m_resolver;
  const char *GetDescription() override { return ""; };
  lldb_private::UserIDResolver &GetUserIDResolver() { return m_resolver; }
  bool GetSupportedArchitectureAtIndex(uint32_t idx,
                                       lldb_private::ArchSpec &arch) override {
    UNREFERENCED_PARAMETER(arch);
    UNREFERENCED_PARAMETER(idx);
    return true;
  }
  bool SupportsModules() override { return true; }
  bool IsCompatibleArchitecture(
      const lldb_private::ArchSpec &arch, bool exact_arch_match,
      lldb_private::ArchSpec *compatible_arch_ptr) override {
    UNREFERENCED_PARAMETER(compatible_arch_ptr);
    UNREFERENCED_PARAMETER(arch);
    UNREFERENCED_PARAMETER(exact_arch_match);
    return true;
  }

  lldb::ProcessSP
  Attach(lldb_private::ProcessAttachInfo &attach_info,
         lldb_private::Debugger &debugger,
         lldb_private::Target *target, // Can be nullptr, if nullptr
                                       // create a new target, else
                                       // use existing one
         lldb_private::Status &error) {
    return lldb::ProcessSP();
  }

  void CalculateTrapHandlerSymbolNames() override{};

  // PluginInterface protocol
  lldb_private::ConstString GetPluginName() override {
    return lldb_private::ConstString("my plugin");
  };

  uint32_t GetPluginVersion() override { return 1; };

  CommonCommandArgs m_CommonCommandArgs;
};

class Thread2 : public lldb_private::Thread {
public:
  Thread2(CommonCommandArgs args, lldb_private::Process &process,
          lldb::tid_t tid, bool use_invalid_index_id = false)
      : Thread(process, tid, use_invalid_index_id) {}
  ~Thread2() { DestroyThread(); }

  void RefreshStateAfterStop() override{};

  lldb::RegisterContextSP GetRegisterContext() override {
    m_register_context = CreateRegisterContextForFrame(nullptr);
    return m_register_context;
  }

  bool CalculateStopInfo() { return true; }

  virtual lldb::RegisterContextSP
  CreateRegisterContextForFrame(lldb_private::StackFrame *frame) override {
    auto frameIndex = 0;
    if (frame != nullptr) {
      frameIndex = frame->GetConcreteFrameIndex();
    }

    return lldb::RegisterContextSP(
        new lldb_private::MyRegisterContext(*this, frameIndex));
  }

private:
  lldb::RegisterContextSP m_register_context;
  CommonCommandArgs args;
};

class StackFrame2 : public lldb_private::StackFrame {
  using lldb_private::StackFrame::StackFrame;
};

class MyCtx : public lldb_private::ExecutionContextScope {
public:
  MyCtx(const lldb::TargetSP target, const CommonCommandArgs &args,
        std::vector<std::shared_ptr<LoadedDll>> &modules) {
    m_target = target;
    m_CommonCommandArgs = args;
    m_modules = modules;
  }

  lldb::TargetSP CalculateTarget() { return m_target; }

  lldb::ProcessSP CalculateProcess() override {
    if (!m_process.get()) {
      auto listener = lldb_private::Listener::MakeListener("listen");
      m_process = Process2::create(CalculateTarget(), listener,
                                   m_CommonCommandArgs, m_modules);
      if (!m_process.get()) {
        return m_process;
      }
      m_process->GetThreadList().AddThread(CalculateThread());
      m_process->GetThreadList().SetSelectedThreadByID(
          CalculateThread()->GetID());
    }
    return m_process;
  }

  lldb::ThreadSP CalculateThread() override {
    if (!m_thread.get()) {
      auto process = CalculateProcess();
      if (!process) {
        return m_thread;
      }
      m_thread = lldb::ThreadSP(
          new Thread2(m_CommonCommandArgs, *CalculateProcess(),
                      g_platform->getCurrentThread()->getThreadId()));
    }
    return m_thread;
  };

  lldb::StackFrameSP CalculateStackFrame() override {
    if (!m_frame.get()) {
      m_frame = CalculateThread()->GetSelectedFrame();
    }
    return m_frame;
  };

  void
  CalculateExecutionContext(lldb_private::ExecutionContext &exe_ctx) override {
    exe_ctx.SetFrameSP(CalculateStackFrame());
    exe_ctx.SetThreadSP(CalculateThread());
    exe_ctx.SetProcessSP(CalculateProcess());
    exe_ctx.SetTargetSP(CalculateTarget());
  }

private:
  std::shared_ptr<lldb_private::Address> m_addr;
  std::shared_ptr<lldb_private::LineEntry> m_lineEntry;
  lldb::ThreadSP m_thread;
  std::vector<std::shared_ptr<LoadedDll>> m_modules;
  lldb::ProcessSP m_process;

  lldb::StackFrameSP m_frame;
  lldb::TargetSP m_target;
  CommonCommandArgs m_CommonCommandArgs;
};

void initializeLLdbGlobals() {
  lldb_private::CPlusPlusLanguage::Initialize();
  lldb_private::SystemInitializerCommon system;
  system.Initialize();

  lldb_private::CPlusPlusLanguage::Initialize();
  ObjectFilePECOFF::Initialize();
  ABIWindows_x86_64::Initialize();
  lldb_private::platform_freebsd::PlatformFreeBSD::Initialize();
  lldb_private::platform_linux::PlatformLinux::Initialize();
  lldb_private::platform_netbsd::PlatformNetBSD::Initialize();
  lldb_private::platform_openbsd::PlatformOpenBSD::Initialize();
  lldb_private::PlatformWindows::Initialize();
  lldb_private::platform_android::PlatformAndroid::Initialize();
  PlatformRemoteiOS::Initialize();
  PlatformMacOSX::Initialize();
#if defined(__APPLE__)
  PlatformiOSSimulator::Initialize();
  PlatformDarwinKernel::Initialize();
#endif

  // Initialize LLVM and Clang
  llvm::InitializeAllTargets();
  llvm::InitializeAllAsmPrinters();
  llvm::InitializeAllTargetMCs();
  llvm::InitializeAllDisassemblers();
  SymbolFileDWARF::Initialize();
  UnwindAssemblyInstEmulation::Initialize();
  UnwindAssembly_x86::Initialize();

  DisassemblerLLVMC::Initialize();
  lldb_private::TypeSystemClang::Initialize();
  JITLoaderGDB::Initialize();
  ProcessElfCore::Initialize();
  ProcessMachCore::Initialize();
  lldb_private::MemoryHistoryASan::Initialize();
  lldb_private::DynamicLoaderWindowsDYLD::Initialize();

  // Scan for any system or user LLDB plug-ins
  lldb_private::PluginManager::Initialize();

  // The process settings need to know about installed plug-ins, so the
  // Settings must be initialized
  // AFTER PluginManager::Initialize is called.

  lldb_private::Debugger::SettingsInitialize();
  llvm::MCJIT::Register();
}

struct CommonCommandInitializerValues {
  lldb::DebuggerSP debugger;
  std::shared_ptr<MyCtx> exeCtxScope;
  lldb::TargetSP targetSp;
};

llvm::Optional<CommonCommandInitializerValues>
commonCommandRunInitializer(const CommonCommandArgs &commonCommandArgs,
                            std::vector<std::shared_ptr<LoadedDll>> &modules) {
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
  lldb_private::Platform::SetHostPlatform(
      lldb::PlatformSP(new Platform2(true, commonCommandArgs)));
  CommonCommandInitializerValues commonCommandInitializerValues;
  commonCommandInitializerValues.debugger =
      lldb_private::Debugger::CreateInstance();
  int FD;
  if (std::error_code ec = llvm::sys::fs::openFileForWrite(
          "error.txt", FD, llvm::sys::fs::CD_CreateAlways,
          llvm::sys::fs::OF_Text)) {
    return llvm::NoneType();
  }

  // Keep it for now for debugging puproses only.
  auto error_stream = std::make_shared<llvm::raw_fd_ostream>(FD, true, true);
  if (!commonCommandInitializerValues.debugger->EnableLog(
          "lldb", {"default", "expr"}, "log.txt", 0, *error_stream)) {
    return llvm::NoneType();
  }

  lldb_private::LoadDependentFiles load_dependent_files =
      lldb_private::eLoadDependentsNo;
  auto &targetList = commonCommandInitializerValues.debugger->GetTargetList();

  if (!targetList
           .CreateTarget(*commonCommandInitializerValues.debugger,
                         "c:\\Windows\\System32\\kernel32.dll", "",
                         load_dependent_files, nullptr,
                         commonCommandInitializerValues.targetSp)
           .Success()) {
    return llvm::NoneType();
  }


  llvm::Triple triple;
  triple.setArch(llvm::Triple::x86_64);
  commonCommandInitializerValues.targetSp->SetArchitecture(
      lldb_private::ArchSpec(triple));
  commonCommandInitializerValues.exeCtxScope = std::make_shared<MyCtx>(
      commonCommandInitializerValues.targetSp, commonCommandArgs, modules);
  if (!commonCommandInitializerValues.exeCtxScope->CalculateProcess()) {
    return llvm::NoneType();
  }
  if(!commonCommandInitializerValues.exeCtxScope->CalculateThread()
      ->SetSelectedFrameByIndex(commonCommandArgs.selectedFrameIndex)) {
    writeLog("failed to set wanted frame index " +
             std::to_string(commonCommandArgs.selectedFrameIndex) + "\n maybe there is module which isn't the main one in the middle?, for exmple, nt,hal, and etc");
    return llvm::NoneType();
  }

  commonCommandInitializerValues.targetSp->GetProcessSP() =
      commonCommandInitializerValues.exeCtxScope->CalculateProcess();
  commonCommandInitializerValues.exeCtxScope->CalculateStackFrame();
  g_platform->runFunc = [commonCommandInitializerValues](
                            void *addr, const std::vector<size_t> &args) {
    auto thread = commonCommandInitializerValues.exeCtxScope->CalculateThread();
    lldb_private::Status error;
    lldb_private::EvaluateExpressionOptions options;
    options.SetDebug(false);
    options.SetIgnoreBreakpoints(false);
    options.SetUnwindOnError(false);
    options.SetKeepInMemory(false);
    options.SetTryAllThreads(false);
    options.SetStopOthers(true);
    options.SetAutoApplyFixIts(false);
    size_t returnValue = 0;

    lldb_private::ExecutionContext exeCtx;
    commonCommandInitializerValues.exeCtxScope->CalculateExecutionContext(
        exeCtx);
    thread->RunFunc((size_t)addr, args, returnValue, error, options, exeCtx);
    return returnValue;
  };

  t_bpAddress = g_platform->getFunctionToBreakAddress();
  if (g_platform->callAllocateSpaceInStack) {
    t_callAllocateStack = g_platform->callAllocateSpaceInStack.value();
  }
  return commonCommandInitializerValues;
}

bool runCommand(const std::function<bool()> &func,
                const CommonCommandArgs &commonCommandArgs,
                std::vector<std::shared_ptr<LoadedDll>>& modules) {
  if (!g_platform->verifyPreConditions()) {
    return false;
  }
  llvm::Optional<CommonCommandInitializerValues>
      commonCommandInitializerValues =
          commonCommandRunInitializer(commonCommandArgs, modules);
  if (!commonCommandInitializerValues) {
    writeLog("failed to run initialize lldb");
    return false;
  }
  return func();
}

bool executeExpression(CommonCommandArgs &commonCommandArgs,
                       const std::string &expression) {
  writeLog("sarting executing expression");

  auto modules = g_blink.getAllDlls();
  llvm::Optional<CommonCommandInitializerValues>
      commonCommandInitializerValues =
          commonCommandRunInitializer(commonCommandArgs, modules);
  if (!commonCommandInitializerValues) {
    return false;
  }

  lldb_private::EvaluateExpressionOptions options;
  options.SetUnwindOnError(false);
  options.SetIgnoreBreakpoints(false);
  options.SetKeepInMemory(false);
  options.SetUseDynamic(lldb::eDynamicDontRunTarget);
  options.SetTryAllThreads(true);
  options.SetDebug(false);
  options.SetCoerceToId(false);
  options.SetExecutionPolicy(lldb_private::eExecutionPolicyAlways);
  options.SetGenerateDebugInfo(true);
  options.SetTimeout(llvm::None);
  lldb::ValueObjectSP value;
  lldb::ExpressionResults result =
      commonCommandInitializerValues->targetSp->EvaluateExpression(
          expression, commonCommandInitializerValues->exeCtxScope.get(), value,
          options);
  std::string finishedString =
      lldb::eExpressionCompleted == result
          ? "finished executing expression successfully"
          : "failed to execute expression";
  writeLog(finishedString);

  if (lldb::eExpressionCompleted != result) {
    if (value && value->GetError().AsCString()) {
      auto errorsStr = value->GetError().AsCString();
      writeLog(errorsStr);
    }
  }
  return lldb::eExpressionCompleted == result;
}

bool returnFromFrame(CommonCommandArgs &commonCommandArgs,
                     size_t untilFrameIndex, bool shouldCallDestructors) {
  
  if (untilFrameIndex == 0) {
    writeLog("you try to return to the same frame - not doing anything");
    return false;
  }
  writeLog("start returning from frame");
  std::vector<std::shared_ptr<LoadedDll>> modules = g_blink.getAllDlls();
  llvm::Optional<CommonCommandInitializerValues>
      commonCommandInitializerValues =
          commonCommandRunInitializer(commonCommandArgs, modules);
  if (!commonCommandInitializerValues) {
    return false;
  }
  lldb_private::ExecutionContext exe_ctx2;
  commonCommandInitializerValues->exeCtxScope->CalculateExecutionContext(
      exe_ctx2);
  auto error = returnFromCurrentFrame(
      *commonCommandInitializerValues->exeCtxScope->CalculateThread(), exe_ctx2,
      shouldCallDestructors, (int32_t)untilFrameIndex);
  std::string returnFromFrameStr = error.Success()
                                       ? "returned from frame successfully"
                                       : "failed to return from frmae";
  writeLog(returnFromFrameStr);
  return error.Success();
}

bool jumpTo(CommonCommandArgs& commonCommandArgs, uint32_t line) {
  std::vector<std::shared_ptr<LoadedDll>> modules = g_blink.getAllDlls();
  llvm::Optional<CommonCommandInitializerValues>
      commonCommandInitializerValues =
          commonCommandRunInitializer(commonCommandArgs, modules);
  if (!commonCommandInitializerValues) {
    return false;
  }
  lldb_private::ExecutionContext exe_ctx2;
  commonCommandInitializerValues->exeCtxScope->CalculateExecutionContext(
      exe_ctx2);
  lldb_private::Status error;
  auto frame =
      commonCommandInitializerValues->exeCtxScope->CalculateStackFrame();
  auto thread = 
      commonCommandInitializerValues->exeCtxScope->CalculateThread();

  const lldb_private::SymbolContext &sym_ctx =
      frame->GetSymbolContext(lldb::eSymbolContextLineEntry);

    // Try the current file, but override if asked.
    auto file = sym_ctx.line_entry.file;

    if (!file) {
      writeLog(
          "No source file available for the current location.");
      return false;
    }

    std::string warnings;
    auto targetSp =
        commonCommandInitializerValues->exeCtxScope->CalculateTarget();
    // Find candidate locations.
    std::vector<lldb_private::Address> candidates, within_function, outside_function;
    const lldb_private::SymbolContext &sc =
        frame->GetSymbolContext(lldb::eSymbolContextFunction);
    targetSp->GetImages().FindAddressesForLine(
        targetSp, file, line, sc.function,within_function, outside_function);
    if (within_function.empty() && !outside_function.empty()) {
      writeLog("The line for the jump isn't in the current function, not jumping");
      return false;
    } else if (within_function.empty()) {
      writeLog(
          "not found address for the wanted line - not jumping, probably the line is outside the current file");
      return false;
    }
    uint64_t whereToJump = (uint64_t)-1;
    for (const auto& address : within_function) {
      whereToJump =
          std::min(address.GetLoadAddress(targetSp.get()), whereToJump);
    }
    if (whereToJump > g_platform->getCurrentThread()->getRegisterValue("rip", 0).to_ullong()) {
      writeLog("trying to jump after current line - not supported");
      return false;
    }
    error = ::callDestructors(
        *commonCommandInitializerValues->exeCtxScope->CalculateThread(),
        exe_ctx2, (void *)whereToJump);
    g_platform->getCurrentThread()->setRegisterValue("rip", whereToJump);
    std::stringstream ss;
    ss << std::hex << whereToJump;
    writeLog("finished jumping to " + ss.str());
  return error.Success();
}
} // namespace commands