#include "Api/SystemInitializerFull.h"
#include "DynamicLoaderWindowsDYLD.h"
#include "MCJIT.h"
#include "MyRegisterContext.h"
#include "ObjectFilePECOFF.h"
#include "Plugins/ABI/MacOSX-arm/ABIMacOSX_arm.h"
#include "Plugins/ABI/MacOSX-arm64/ABIMacOSX_arm64.h"
#include "Plugins/ABI/MacOSX-i386/ABIMacOSX_i386.h"
#include "Plugins/ABI/SysV-arc/ABISysV_arc.h"
#include "Plugins/ABI/SysV-arm/ABISysV_arm.h"
#include "Plugins/ABI/SysV-arm64/ABISysV_arm64.h"
#include "Plugins/ABI/SysV-hexagon/ABISysV_hexagon.h"
#include "Plugins/ABI/SysV-i386/ABISysV_i386.h"
#include "Plugins/ABI/SysV-mips/ABISysV_mips.h"
#include "Plugins/ABI/SysV-mips64/ABISysV_mips64.h"
#include "Plugins/ABI/SysV-ppc/ABISysV_ppc.h"
#include "Plugins/ABI/SysV-ppc64/ABISysV_ppc64.h"
#include "Plugins/ABI/SysV-s390x/ABISysV_s390x.h"
#include "Plugins/ABI/SysV-x86_64/ABISysV_x86_64.h"
#include "Plugins/ABI/Windows-x86_64/ABIWindows_x86_64.h"
#include "Plugins/Architecture/Arm/ArchitectureArm.h"
#include "Plugins/Architecture/Mips/ArchitectureMips.h"
#include "Plugins/Architecture/PPC64/ArchitecturePPC64.h"
#include "Plugins/Disassembler/llvm/DisassemblerLLVMC.h"
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
#include "Plugins/InstrumentationRuntime/ASan/ASanRuntime.h"
#include "Plugins/InstrumentationRuntime/MainThreadChecker/MainThreadCheckerRuntime.h"
#include "Plugins/InstrumentationRuntime/TSan/TSanRuntime.h"
#include "Plugins/InstrumentationRuntime/UBSan/UBSanRuntime.h"
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
#include "Plugins/SymbolFile/PDB/SymbolFilePDB.h"
#include "Plugins/SymbolFile/Symtab/SymbolFileSymtab.h"
#include "Plugins/SymbolVendor/ELF/SymbolVendorELF.h"
#include "Plugins/SystemRuntime/MacOSX/SystemRuntimeMacOSX.h"
#include "Plugins/UnwindAssembly/InstEmulation/UnwindAssemblyInstEmulation.h"
#include "Plugins/UnwindAssembly/x86/UnwindAssembly-x86.h"
#include "RunArgs.h"
#include "SymbolFileNativePDB.h"
#include "lldb/API/SBDebugger.h"
#include "lldb/Host/HostInfoBase.h"
#include "lldb/Symbol/ClangASTContext.h"
#include "lldb/Target/DynamicLoader.h"
#include "lldb/Target/Process.h"
#include "lldb/Target/RegisterContext.h"
#include "lldb/Target/TargetList.h"
#include "lldb/core/Debugger.h"
#include "lldb/core/Module.h"
#include "lldb/core/Section.h"
#include "lldb/lldb-forward.h"
#include "lldb/target/target.h"
#include "llvm/Support/TargetSelect.h"
#include <Windows.h>
#include <bitset>
#include <iostream>

bool GetTripleForProcess(const lldb_private::FileSpec &executable,
                         llvm::Triple &triple) {
  // Open the PE File as a binary file, and parse just enough information to
  // determine the machine type.
  auto imageBinaryP = lldb_private::FileSystem::Instance().Open(
      executable, lldb_private::File::eOpenOptionRead,
      lldb::eFilePermissionsUserRead);
  if (!imageBinaryP)
    return llvm::errorToBool(imageBinaryP.takeError());
  lldb_private::File &imageBinary = *imageBinaryP.get();
  imageBinary.SeekFromStart(0x3c);
  int32_t peOffset = 0;
  uint32_t peHead = 0;
  uint16_t machineType = 0;
  size_t readSize = sizeof(peOffset);
  imageBinary.Read(&peOffset, readSize);
  imageBinary.SeekFromStart(peOffset);
  imageBinary.Read(&peHead, readSize);
  if (peHead != 0x00004550) // "PE\0\0", little-endian
    return false;           // Status: Can't find PE header
  readSize = 2;
  imageBinary.Read(&machineType, readSize);
  triple.setVendor(llvm::Triple::PC);
  triple.setOS(llvm::Triple::Win32);
  triple.setArch(llvm::Triple::UnknownArch);
  if (machineType == 0x8664)
    triple.setArch(llvm::Triple::x86_64);
  else if (machineType == 0x14c)
    triple.setArch(llvm::Triple::x86);
  else if (machineType == 0x1c4)
    triple.setArch(llvm::Triple::arm);
  else if (machineType == 0xaa64)
    triple.setArch(llvm::Triple::aarch64);

  return true;
}

class UserIDResolver2 : public lldb_private::UserIDResolver {
  llvm::Optional<std::string> DoGetUserName(id_t uid) {
    return std::string("");
  }
  llvm::Optional<std::string> DoGetGroupName(id_t gid) {
    return std::string("");
  }
};

class Process2 : public lldb_private::Process {
public:
  Process2(lldb::TargetSP target_sp, lldb::ListenerSP listener_sp,
           const RunArgs &RunArgs)
      : lldb_private::Process(target_sp, listener_sp), m_RunArgs(RunArgs) {

    SetPublicState(lldb::eStateStopped, false);
    m_private_state.SetValue(lldb::eStateStopped);
    SetCanRunCode(true);
    auto dynamic_loader = (lldb_private::DynamicLoaderWindowsDYLD *)
        lldb_private::DynamicLoaderWindowsDYLD::CreateInstance(this, true);
    lldb_private::FileSpec fileSpec(RunArgs.file_path);
    llvm::Triple triple;
    GetTripleForProcess(fileSpec, triple);
    auto moduleSp = lldb::ModuleSP(
        new lldb_private::Module(fileSpec, lldb_private::ArchSpec(triple)));
    setPath(fileSpec.GetPath());
    target_sp->SetExecutableModule(moduleSp);

    dynamic_loader->OnLoadModule(moduleSp, lldb_private::ModuleSpec(),
                                 (size_t)RunArgs.start_address);
    auto &images = GetTarget().GetImages();
    images.Append(moduleSp);
  }
  void Suspend() { m_RunArgs.suspendThread(); }

  lldb::ExpressionResults
  RunThreadPlan(lldb_private::ExecutionContext &exe_ctx,
                lldb::ThreadPlanSP &thread_plan_sp,
                const lldb_private::EvaluateExpressionOptions &options,
                lldb_private::DiagnosticManager &diagnostic_manager) {
    return m_RunArgs.runThreadPlan(exe_ctx);
  }

  // Check if a given Process
  bool CanDebug(lldb::TargetSP target_sp, bool plugin_specified_by_name) {
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
    return false;
  };
  lldb_private::Status DoDestroy() override { return lldb_private::Status(); };

  // Process Memory
  size_t DoReadMemory(lldb::addr_t addr, void *buf, size_t size,
                      lldb_private::Status &error) override {
    m_RunArgs.readMemory((void *)addr, buf, size);
    return size;
  };

  size_t ReadMemory(lldb::addr_t vm_addr, void *buf, size_t size,
                    lldb_private::Status &error) override {
    return DoReadMemory(vm_addr, buf, size, error);
  }

  size_t DoWriteMemory(lldb::addr_t vm_addr, const void *buf, size_t size,
                       lldb_private::Status &error) override {
    m_RunArgs.writeMemory((void *)vm_addr, buf, size);
    return size;
  }

  lldb::addr_t DoAllocateMemory(size_t size, uint32_t permissions,
                                lldb_private::Status &error) override {

    return (lldb::addr_t)m_RunArgs.allocateMemory(size);
  }

  lldb_private::Status DoDeallocateMemory(lldb::addr_t ptr) override {
    m_RunArgs.deallocateMemory((void *)ptr);
    return lldb_private::Status();
  };

  lldb_private::Status DoResume() override {
    lldb_private::Status error;
    m_RunArgs.resumeThread();
    return error;
  }

  lldb::StackFrameSP CalculateStackFrame() override { return m_frame; }

  void SetStackFrame(lldb::StackFrameSP sp) { m_frame = sp; }
  lldb::StackFrameSP m_frame;
  RunArgs m_RunArgs;
};

class Platform2 : public lldb_private::Platform {
public:
  Platform2(bool is_host_platform, RunArgs RunArgs)
      : lldb_private::Platform(is_host_platform), m_RunArgs(RunArgs) {}
  UserIDResolver2 m_resolver;
  const char *GetDescription() override { return ""; };
  lldb_private::UserIDResolver &GetUserIDResolver() { return m_resolver; }
  bool GetSupportedArchitectureAtIndex(uint32_t idx,
                                       lldb_private::ArchSpec &arch) override {
    return true;
  }

  bool IsCompatibleArchitecture(
      const lldb_private::ArchSpec &arch, bool exact_arch_match,
      lldb_private::ArchSpec *compatible_arch_ptr) override {
    return true;
  }

  lldb::ProcessSP
  Attach(lldb_private::ProcessAttachInfo &attach_info,
         lldb_private::Debugger &debugger,
         lldb_private::Target *target, // Can be nullptr, if nullptr
                                       // create a new target, else
                                       // use existing one
         lldb_private::Status &error) {
    error.Clear();
    auto listener = lldb_private::Listener::MakeListener("listen");
    return lldb::ProcessSP(
        new Process2(lldb::TargetSP(target), listener, m_RunArgs));
  }

  void CalculateTrapHandlerSymbolNames() override{};

  // PluginInterface protocol
  lldb_private::ConstString GetPluginName() override {
    return lldb_private::ConstString("my plugin");
  };

  uint32_t GetPluginVersion() override { return 1; };

  RunArgs m_RunArgs;
};

class Thread2 : public lldb_private::Thread {
public:
  Thread2(RunArgs RunArgs, lldb_private::Process &process, lldb::tid_t tid,
          bool use_invalid_index_id = false)
      : Thread(process, tid, use_invalid_index_id), m_RunArgs(RunArgs) {}
  ~Thread2() { DestroyThread(); }

  virtual void RefreshStateAfterStop(){};

  virtual lldb::RegisterContextSP GetRegisterContext() {
    return CreateRegisterContextForFrame(nullptr);
  }

  bool CalculateStopInfo() {
    __debugbreak();
    return true;
  }

  virtual lldb::RegisterContextSP
  CreateRegisterContextForFrame(lldb_private::StackFrame *frame) {
    if (!m_register_context) {
      m_register_context =
          lldb::RegisterContextSP(new lldb_private::MyRegisterContext(
              m_RunArgs.getRegisterValue, m_RunArgs.setRegisterValue,
              CalculateTarget()->GetArchitecture(), *this, 0));
    }

    return m_register_context;
  }

private:
  lldb::RegisterContextSP m_register_context;
  RunArgs m_RunArgs;
};

class StackFrame2 : public lldb_private::StackFrame {
  using lldb_private::StackFrame::StackFrame;
};

class MyCtx : public lldb_private::ExecutionContextScope {
public:
  MyCtx(const lldb::TargetSP target, RunArgs RunArgs) {
    m_target = target;
    m_RunArgs = RunArgs;
  }

  lldb::TargetSP CalculateTarget() { return m_target; }

  lldb::ProcessSP CalculateProcess() override {
    if (!m_process.get()) {
      auto listener = lldb_private::Listener::MakeListener("listen");
      m_process =
          lldb::ProcessSP(new Process2(CalculateTarget(), listener, m_RunArgs));
      m_process->GetThreadList().AddThread(CalculateThread());
      m_process->GetThreadList().SetSelectedThreadByID(
          CalculateThread()->GetID());
    }
    return m_process;
  }

  lldb::ThreadSP CalculateThread() override {
    if (!m_thread.get()) {

      m_thread = lldb::ThreadSP(
          new Thread2(m_RunArgs, *CalculateProcess(), m_RunArgs.getThreadId()));
    }
    return m_thread;
  };

  lldb::StackFrameSP CalculateStackFrame() override {
    if (!m_frame.get()) {
      m_frame = CalculateThread()->GetSelectedFrame();
      ((Process2 *)(CalculateProcess().get()))->SetStackFrame(m_frame);
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
  lldb::ProcessSP m_process;

  lldb::StackFrameSP m_frame;
  lldb::TargetSP m_target;
  RunArgs m_RunArgs;
};

void showResult(lldb::ValueObjectSP result_valobj_sp,
                lldb_private::Stream &stream) {
  if (result_valobj_sp) {

    if (result_valobj_sp->GetError().Success()) {

      lldb_private::DumpValueObjectOptions options;
      options.SetMaximumDepth(5);
      options.SetMaximumPointerDepth(
          {lldb_private::DumpValueObjectOptions::PointerDepth::Mode::Always,
           5});

      options.SetVariableFormatDisplayLanguage(
          result_valobj_sp->GetPreferredDisplayLanguage());

      result_valobj_sp->Dump(stream, options);

    } else {
      if (result_valobj_sp->GetError().GetError() ==
          lldb_private::UserExpression::kNoResult) {
      } else {
        const char *error_cstr = result_valobj_sp->GetError().AsCString();
        if (error_cstr && error_cstr[0]) {
          const size_t error_cstr_len = strlen(error_cstr);
          const bool ends_with_newline = error_cstr[error_cstr_len - 1] == '\n';
          if (strstr(error_cstr, "error:") != error_cstr)
            stream.PutCString("error: ");
          stream.Write(error_cstr, error_cstr_len);
          if (!ends_with_newline)
            stream.EOL();
        } else {
          stream.PutCString("error: unknown error\n");
        }
      }
    }
  }
}

bool run(RunArgs runArgs) {

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
  lldb_private::ClangASTContext::Initialize();

  DisassemblerLLVMC::Initialize();

  JITLoaderGDB::Initialize();
  ProcessElfCore::Initialize();
  ProcessMachCore::Initialize();
  lldb_private::MemoryHistoryASan::Initialize();
  lldb_private::AddressSanitizerRuntime::Initialize();
  lldb_private::ThreadSanitizerRuntime::Initialize();
  lldb_private::UndefinedBehaviorSanitizerRuntime::Initialize();
  lldb_private::DynamicLoaderWindowsDYLD::Initialize();

  // Scan for any system or user LLDB plug-ins
  lldb_private::PluginManager::Initialize();

  // The process settings need to know about installed plug-ins, so the
  // Settings must be initialized
  // AFTER PluginManager::Initialize is called.

  lldb_private::Debugger::SettingsInitialize();

  lldb_private::Platform::SetHostPlatform(
      lldb::PlatformSP(new Platform2(true, runArgs)));
  auto a = lldb_private::Platform::GetHostPlatform();
  auto debugger = lldb_private::Debugger::CreateInstance();
  int FD;
  if (std::error_code ec = llvm::sys::fs::openFileForWrite(
          "error.txt", FD, llvm::sys::fs::CD_CreateAlways,
          llvm::sys::fs::OF_Text)) {
    return false;
  }
  auto log_stream_sp = std::make_shared<llvm::raw_fd_ostream>(FD, true, true);
  assert(debugger->EnableLog("lldb", {"expr", "unwind"}, "log.txt", 0,
                             *log_stream_sp));

  lldb_private::Log *log(lldb_private::GetLogIfAnyCategoriesSet(
      LIBLLDB_LOG_EXPRESSIONS | LIBLLDB_LOG_STEP));
  assert(log);

  lldb_private::LoadDependentFiles load_dependent_files =
      lldb_private::eLoadDependentsNo;
  lldb::TargetSP target_sp;
  auto &targetList = debugger->GetTargetList();

  assert(targetList
             .CreateTarget(*debugger, runArgs.file_path, "",
                           load_dependent_files, nullptr, target_sp)
             .Success());
  lldb_private::FileSpec fileSpec(runArgs.file_path);
  llvm::Triple triple;
  GetTripleForProcess(fileSpec, triple);
  target_sp->SetArchitecture(lldb_private::ArchSpec(triple));

  lldb::ValueObjectSP value;
  auto exe_ctx = MyCtx(target_sp, runArgs);
  exe_ctx.CalculateThread()->SetSelectedFrameByIndex(runArgs.frameIndex);
  lldb_private::EvaluateExpressionOptions options;
  options.SetUnwindOnError(true);
  options.SetIgnoreBreakpoints(true);
  options.SetKeepInMemory(true);
  options.SetUseDynamic(lldb::eDynamicDontRunTarget);
  options.SetTryAllThreads(true);
  options.SetDebug(true);
  options.SetCoerceToId(false);
  options.SetExecutionPolicy(lldb_private::eExecutionPolicyAlways);
  options.SetGenerateDebugInfo(true);
  options.SetTimeout(llvm::None);
  llvm::MCJIT::Register();
  target_sp->GetProcessSP() = exe_ctx.CalculateProcess();
  exe_ctx.CalculateStackFrame();
  auto module =
      exe_ctx.CalculateProcess()->GetTarget().GetImages().GetModuleAtIndex(1);
  if (runArgs.bpAddress) {
    auto entryPointAddress = exe_ctx.CalculateTarget()->GetEntryPointAddress();

    runArgs.addBreakpoint((void *)(entryPointAddress.get().GetLoadAddress(
        exe_ctx.CalculateTarget().get())));
  }
  lldb::ExpressionResults result = target_sp->EvaluateExpression(
      runArgs.expression, &exe_ctx, value, options);
  assert(lldb::eExpressionCompleted == result);
  showResult(value, *runArgs.stream);
  return true;
}