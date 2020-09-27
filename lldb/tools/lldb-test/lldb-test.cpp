
#include "Api/SystemInitializerFull.h"
#include "DynamicLoaderWindowsDYLD.h"
#include "MCJIT.h"
#include "MyRegisterContext.h"
#include "ObjectFilePECOFF.h"
#include "lldb/Target/Unwind.h"
#include "lldb/lldb-enumerations.h"
#include "lldb/lldb-private.h"
#include "plugins/Disassembler/LLVMC/DisassemblerLLVMC.h"
#include <optional>

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
#include "Plugins/SymbolFile/PDB/SymbolFilePDB.h"
#include "Plugins/SymbolFile/Symtab/SymbolFileSymtab.h"
#include "Plugins/SymbolVendor/ELF/SymbolVendorELF.h"
#include "Plugins/SystemRuntime/MacOSX/SystemRuntimeMacOSX.h"
#include "Plugins/TypeSystem/Clang/TypeSystemClang.h"
#include "Plugins/UnwindAssembly/InstEmulation/UnwindAssemblyInstEmulation.h"
#include "Plugins/UnwindAssembly/x86/UnwindAssembly-x86.h"
#include "RunArgs.h"
#include "SymbolFileNativePDB.h"
#include "Utils.h"
#include "lldb/API/SBDebugger.h"
#include "lldb/Host/HostInfoBase.h"
#include "lldb/Target/DynamicLoader.h"
#include "lldb/Target/Process.h"
#include "lldb/Target/RegisterContext.h"
#include "lldb/Target/Target.h"
#include "lldb/Target/TargetList.h"
#include "lldb/core/Debugger.h"
#include "lldb/core/Module.h"
#include "lldb/core/Section.h"
#include "lldb/lldb-forward.h"
#include "lldb/target/target.h"
#include "llvm/Support/TargetSelect.h"
#include <Windows.h>
#include <bitset>
#include <ehdata.h>
#include <fstream>
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
    int num = 0;
    std::string modulePath;
    for (const auto &module : RunArgs.modules) {
      num++;
      modulePath = "c:\\temp\\" + std::to_string(num) + ".dll";

      lldb_private::FileSpec fileSpec(modulePath);
      llvm::Triple triple;
      GetTripleForProcess(fileSpec, triple);
      std::ofstream f(modulePath, std::ios::binary);
      f.write(module.buffer.data(), module.buffer.size());
      f.close();
      auto moduleSp = lldb::ModuleSP(
          new lldb_private::Module(fileSpec, lldb_private::ArchSpec(triple)));
      dynamic_loader->OnLoadModule(moduleSp, lldb_private::ModuleSpec(),
                                   (size_t)module.startAddr);

      auto &images = GetTarget().GetImages();
      images.Append(moduleSp);
    }

    setPath(modulePath);
  }
  void Suspend() { m_RunArgs.suspendThread(); }

  lldb::ExpressionResults
  RunThreadPlan(lldb_private::ExecutionContext &exe_ctx,
                lldb::ThreadPlanSP &thread_plan_sp,
                const lldb_private::EvaluateExpressionOptions &options,
                lldb_private::DiagnosticManager &diagnostic_manager) {
    return m_RunArgs.runThreadPlan(exe_ctx, thread_plan_sp);
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

    void *memory = m_RunArgs.allocateMemory(size);
    if (nullptr == memory) {
      error.SetErrorString("not enough memory");
    }
    return (lldb::addr_t)memory;
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
  bool SupportsModules() override { return true; }
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

  void RefreshStateAfterStop() override{};

  lldb::RegisterContextSP GetRegisterContext() override {
    m_register_context = CreateRegisterContextForFrame(nullptr);
    return m_register_context;
  }

  bool CalculateStopInfo() {
    __debugbreak();
    return true;
  }

  virtual lldb::RegisterContextSP
  CreateRegisterContextForFrame(lldb_private::StackFrame *frame) override {
    auto frameIndex = 0;
    if (frame != nullptr) {
      frameIndex = frame->GetConcreteFrameIndex();
    }

    return lldb::RegisterContextSP(new lldb_private::MyRegisterContext(
        m_RunArgs.getRegisterValue, m_RunArgs.setRegisterValue, *this,
        frameIndex));
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

#pragma pack(push, ehdata, 4)
struct UnwindInfoContinue {
  union {
    unsigned long ExceptionHandler;
    unsigned long FunctionEntry;
  };
  unsigned long ExceptionData;
};

typedef struct _s_FuncInfo2 {
  unsigned int magicNumber : 29; // Identifies version of compiler
  unsigned int bbtFlags : 3;     // flags that may be set by BBT processing
  __ehstate_t maxState;          // Highest state number plus one (thus
                                 // number of entries in unwind map)
#if _EH_RELATIVE_FUNCINFO
  int dispUnwindMap;       // Image relative offset of the unwind map
  unsigned int nTryBlocks; // Number of 'try' blocks in this function
  int dispTryBlockMap;     // Image relative offset of the handler map
  unsigned int
      nIPMapEntries;    // # entries in the IP-to-state map. NYI (reserved)
  int dispIPtoStateMap; // Image relative offset of the IP to state map
  int dispUwindHelp;    // Displacement of unwind helpers from base
  int dispESTypeList;   // Image relative list of types for exception
                        // specifications
#else
  UnwindMapEntry *pUnwindMap;     // Where the unwind map is
  unsigned int nTryBlocks;        // Number of 'try' blocks in this function
  TryBlockMapEntry *pTryBlockMap; // Where the handler map is
  unsigned int
      nIPMapEntries;       // # entries in the IP-to-state map. NYI (reserved)
  void *pIPtoStateMap;     // An IP to state map.  NYI (reserved).
  ESTypeList *pESTypeList; // List of types for exception specifications
#endif
  int EHFlags; // Flags for some features.
} FuncInfo2;

typedef struct _s_UnwindMapEntry2 {
  __ehstate_t toState; // State this action takes us to
#if _EH_RELATIVE_FUNCINFO
  int action; // Image relative offset of funclet
#else
  void(__cdecl *action)(void); // Funclet to call to effect state change
#endif
} UnwindMapEntry2;
#pragma pack(pop, ehdata)

class RunTimeInfo {
public:
  RunTimeInfo(const std::vector<RUNTIME_FUNCTION> &RuntimeInfos, void *base);

  llvm::Optional<RUNTIME_FUNCTION> findRunTime(size_t rip);

private:
  std::vector<RUNTIME_FUNCTION> m_runtimeFunctions;
  void *m_base;
};

RunTimeInfo::RunTimeInfo(const std::vector<RUNTIME_FUNCTION> &runtimeInfos,
                         void *base)
    : m_runtimeFunctions(runtimeInfos), m_base(base) {}

llvm::Optional<RUNTIME_FUNCTION> RunTimeInfo::findRunTime(size_t rip) {
  rip -= (size_t)m_base;
  for (uint32_t i = 0; i < m_runtimeFunctions.size(); i++) {
    if (m_runtimeFunctions[i].BeginAddress <= rip &&
        m_runtimeFunctions[i].EndAddress >= rip) {
      return m_runtimeFunctions[i];
    }
  }
  return llvm::Optional<RUNTIME_FUNCTION>();
}

llvm::Optional<RunTimeInfo> getRunTimeAddress(size_t moduleStart,
                                              lldb_private::Process &process) {
  IMAGE_DOS_HEADER pidh;
  lldb_private::Status status;
  process.ReadMemory(moduleStart, &pidh, sizeof(pidh), status);
  if (!status.Success()) {
    return llvm::Optional<RunTimeInfo>();
  }
  IMAGE_NT_HEADERS pinh;
  size_t current_index = moduleStart + pidh.e_lfanew;
  process.ReadMemory(current_index, &pinh, sizeof(pinh), status);
  if (!status.Success()) {
    return llvm::Optional<RunTimeInfo>();
  }

  IMAGE_OPTIONAL_HEADER pioh;
  current_index += offsetof(IMAGE_NT_HEADERS, OptionalHeader);
  process.ReadMemory(current_index, &pioh, sizeof(IMAGE_OPTIONAL_HEADER),
                     status);
  if (!status.Success()) {
    return llvm::Optional<RunTimeInfo>();
  }

  auto exceptionDirectoryRva =
      pioh.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXCEPTION];

  std::vector<RUNTIME_FUNCTION> runtimesInfos(exceptionDirectoryRva.Size /
                                              sizeof(RUNTIME_FUNCTION));
  process.ReadMemory(exceptionDirectoryRva.VirtualAddress + moduleStart,
                     runtimesInfos.data(),
                     runtimesInfos.size() * sizeof(RUNTIME_FUNCTION), status);
  if (!status.Success()) {
    return llvm::Optional<RunTimeInfo>();
  }
  return RunTimeInfo(runtimesInfos, (void *)moduleStart);
}

int findState(size_t rip, const std::vector<IptoStateMapEntry> &ipo) {
  for (uint32_t i = 0; i < ipo.size(); i++) {
    if ((i != ipo.size() - 1 && ipo[i].Ip <= rip && ipo[i + 1].Ip > rip) ||
        (i == ipo.size() - 1 && ipo[i].Ip <= rip)) {
      return ipo[i].State;
    }
  }
  return -1;
}

extern void *g_bpAddress;

std::optional<lldb::ModuleSP>
getContainingModule(lldb_private::ExecutionContext &executionContext,
                    size_t pc) {
  auto modules = executionContext.GetTargetPtr()->GetImages();
  for (int i = 0; i < modules.GetSize(); i++) {

    auto module = modules.GetModuleAtIndex(i);
    auto objFile = module->GetObjectFile();
    auto sections = *objFile->GetSectionList();
    std::vector<lldb::SectionSP> sectionsList;
    for (const auto &section : sections) {
      sectionsList.push_back(section);
    }

    auto baseStartAddr = objFile->GetBaseAddress().GetLoadAddress(
        executionContext.GetTargetPtr());
    if (baseStartAddr == -1) {
      continue;
    }
    auto lastSection = sectionsList[sectionsList.size() - 1];
    auto lastSectionAddr =
        lastSection->GetLoadBaseAddress(executionContext.GetTargetPtr());
    auto lastSectionSize = lastSection->GetBitSize();
    if (baseStartAddr <= pc && pc < lastSectionSize + lastSectionAddr) {
      return module;
    }
  }
  return std::nullopt;
}

lldb_private::Status
returnFromCurrentFrame(const RunArgs &runArgs, lldb_private::Thread &thread,
                       lldb_private::ExecutionContext &executionContext,
                       bool shouldRunDestructors) {
  lldb_private::Status return_error;

  lldb_private::MyRegisterContext olderFrameContext(
      runArgs.getRegisterValue, runArgs.setRegisterValue, thread, 1);
  lldb::DataBufferSP olderFrameRegisters;
  olderFrameContext.ReadAllRegisterValues(olderFrameRegisters);
  lldb_private::MyRegisterContext youngestContext(
      runArgs.getRegisterValue, runArgs.setRegisterValue, thread, 0);
  if (shouldRunDestructors) {
    auto module =
        getContainingModule(executionContext, youngestContext.GetPC());
    auto objFile = module.value()->GetObjectFile();
    auto baseStartAddr = objFile->GetBaseAddress().GetLoadAddress(
        executionContext.GetTargetPtr());
    auto runTimeInfoTable =
        getRunTimeAddress(baseStartAddr, *executionContext.GetProcessPtr());
    if (!runTimeInfoTable) {
      return return_error;
    }
    auto runTimeInfo =
        runTimeInfoTable.getValue().findRunTime(youngestContext.GetPC());
    if (!runTimeInfo) {
      return return_error;
    }
    UNWIND_INFO unwindInfo;

    executionContext.GetProcessPtr()->ReadMemory(
        baseStartAddr + runTimeInfo->UnwindInfoAddress, &unwindInfo,
        sizeof(unwindInfo), return_error);
    if (!return_error.Success()) {
      return return_error;
    }
    if (unwindInfo.Flags & UNW_FLAG_EHANDLER ||
        unwindInfo.Flags & UNW_FLAG_UHANDLER) {
      int moreCountOfCodesNum = ((unwindInfo.CountOfCodes + 1) & ~1) - 1;
      UnwindInfoContinue unwindInfoEnd;
      executionContext.GetProcessPtr()->ReadMemory(
          baseStartAddr + runTimeInfo->UnwindInfoAddress +
              +sizeof(UNWIND_INFO) + moreCountOfCodesNum * sizeof(UNWIND_CODE),
          &unwindInfoEnd, sizeof(unwindInfoEnd), return_error);
      if (!return_error.Success()) {
        return return_error;
      }
      FuncInfo2 funcInfo;
      executionContext.GetProcessPtr()->ReadMemory(
          baseStartAddr + unwindInfoEnd.ExceptionData, (void *)&funcInfo,
          sizeof(funcInfo), return_error);
      if (!return_error.Success()) {
        return return_error;
      }
      if (funcInfo.magicNumber != 0x19930522) {
        return return_error;
      }
      std::vector<IptoStateMapEntry> ipoEntries(funcInfo.nIPMapEntries);
      executionContext.GetProcessPtr()->ReadMemory(
          baseStartAddr + funcInfo.dispIPtoStateMap, (void *)ipoEntries.data(),
          ipoEntries.size() * sizeof(IptoStateMapEntry), return_error);
      if (!return_error.Success()) {
        return return_error;
      }
      int currentState =
          findState(youngestContext.GetPC() - baseStartAddr, ipoEntries);
      if (-1 == currentState) {
        lldb_private::Log *log(
            lldb_private::GetLogIfAllCategoriesSet(LIBLLDB_LOG_UNWIND));
        LLDB_LOGF(log, "no desturctors");
      }

      if (-1 == funcInfo.maxState) {
        lldb_private::Log *log(
            lldb_private::GetLogIfAllCategoriesSet(LIBLLDB_LOG_UNWIND));
        LLDB_LOGF(log, "no desturctors");
      }
      std::vector<UnwindMapEntry2> unwindMap(funcInfo.maxState);
      executionContext.GetProcessPtr()->ReadMemory(
          baseStartAddr + funcInfo.dispUnwindMap, (void *)unwindMap.data(),
          unwindMap.size() * sizeof(UnwindMapEntry2), return_error);
      if (!return_error.Success()) {
        return return_error;
      }
      while (currentState != -1 && unwindMap[currentState].action) {
        auto funcAddr = baseStartAddr + unwindMap[currentState].action;
        lldb_private::EvaluateExpressionOptions options;
        options.SetDebug(false);
        options.SetIgnoreBreakpoints(false);
        options.SetUnwindOnError(false);
        options.SetKeepInMemory(false);
        options.SetTryAllThreads(false);
        options.SetStopOthers(true);
        std::vector<uint64_t> args;
        args.push_back(0);
        args.push_back(youngestContext.GetSP());
        lldb_private::Log *log(
            lldb_private::GetLogIfAllCategoriesSet(LIBLLDB_LOG_UNWIND));
        LLDB_LOGF(log, "calling desturctor %p", funcAddr);
        runArgs.runFunction((void *)funcAddr, args);
        currentState = unwindMap[currentState].toState;
      }
    }
  }
  youngestContext.WriteAllRegisterValues(olderFrameRegisters);
  return return_error;
}

void clearClangModulesDeclVendorImplCache();
void clearAstImporterCache();

size_t g_lastRip = 0;

bool run(RunArgs &runArgs) {

  lldb_private::Platform::SetHostPlatform(
      lldb::PlatformSP(new Platform2(true, runArgs)));
  auto debugger = lldb_private::Debugger::CreateInstance();
  int FD;
  if (std::error_code ec = llvm::sys::fs::openFileForWrite(
          "error.txt", FD, llvm::sys::fs::CD_CreateAlways,
          llvm::sys::fs::OF_Text)) {
    return false;
  }
  auto log_stream_sp = std::make_shared<llvm::raw_fd_ostream>(FD, true, true);
  assert(debugger->EnableLog("lldb", {"expr", "unwind", "default"}, "log.txt",
                             0, *log_stream_sp));

  lldb_private::LoadDependentFiles load_dependent_files =
      lldb_private::eLoadDependentsNo;
  lldb::TargetSP target_sp;
  auto &targetList = debugger->GetTargetList();

  assert(targetList
             .CreateTarget(*debugger, "c:\\Windows\\System32\\kernel32.dll", "",
                           load_dependent_files, nullptr, target_sp)
             .Success());
  llvm::Triple triple;
  triple.setArch(llvm::Triple::x86_64);
  target_sp->SetArchitecture(lldb_private::ArchSpec(triple));
  lldb::ValueObjectSP value;
  auto exe_ctx = MyCtx(target_sp, runArgs);
  exe_ctx.CalculateThread()->SetSelectedFrameByIndex(
      runArgs.selectedFrameIndex);
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
  target_sp->GetProcessSP() = exe_ctx.CalculateProcess();
  exe_ctx.CalculateStackFrame();
  runArgs.runAndRestoreState = [&](std::function<size_t()> func) {
    lldb_private::MyRegisterContext context(runArgs.getRegisterValue,
                                            runArgs.setRegisterValue,
                                            *exe_ctx.CalculateThread(), 0);
    lldb::DataBufferSP olderFrameRegisters;
    context.ReadAllRegisterValues(olderFrameRegisters);
    auto ret = func();
    context.WriteAllRegisterValues(olderFrameRegisters);
    return ret;
  };
  lldb_private::MyRegisterContext registersContext(
      runArgs.getRegisterValue, runArgs.setRegisterValue,
      *exe_ctx.CalculateThread(), 0);
  lldb_private::ExecutionContext exe_ctx2;
  exe_ctx.CalculateExecutionContext(exe_ctx2);
  auto containinModule =
      getContainingModule(exe_ctx2, registersContext.GetPC());
  auto modulePath =
      std::string(containinModule->get()->GetFileSpec().GetCString());
  exe_ctx.CalculateProcess()->setPath(
      modulePath);
  if (g_lastRip != registersContext.GetPC()) {
    clearClangModulesDeclVendorImplCache();
    clearAstImporterCache();
    g_lastRip = registersContext.GetPC();
  }
  g_bpAddress = runArgs.bpAddress;

  if (!runArgs.shouldReturn) {
    lldb::ExpressionResults result = target_sp->EvaluateExpression(
        runArgs.expression, &exe_ctx, value, options);

    THROW_IF_FALSE(lldb::eExpressionCompleted == result,
                   "failed to evaluate expression");
  } else {
    lldb_private::ExecutionContext exe_ctx2;
    exe_ctx.CalculateExecutionContext(exe_ctx2);
    auto error =
        returnFromCurrentFrame(runArgs, *exe_ctx.CalculateThread(), exe_ctx2,
                               runArgs.shouldCallDestructorsOnReturn);
    THROW_IF_FALSE(error.Success(), "failed to return from current frame");
  }
  auto process = exe_ctx.CalculateProcess();
  process->Finalize();
  return true;
}
