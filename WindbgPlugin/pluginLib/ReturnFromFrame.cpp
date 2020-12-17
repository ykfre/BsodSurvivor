#pragma warning(push, 0)
#include "ReturnFromFrame.h"
#include "LLdbUtils.h"
#include "Logger.h"
#include "MyRegisterContext.h"
#include "Platform.h"
#include "Utils.h"
#include "eh_data.h"
#include "lldb/Target/Process.h"
#include "lldb/Utility/Log.h"
#include "lldb/Utility/Logging.h"
#include <ehdata.h>
#pragma warning(pop)

lldb_private::Status
callDestructors(lldb_private::Thread &thread,
                lldb_private::ExecutionContext &executionContext,
                void *addressToJumpTo) {
  lldb_private::Status return_error;
  lldb_private::MyRegisterContext youngestContext(thread, 0);
  auto module = getContainingModule(executionContext, youngestContext.GetPC());
  if (!module) {
    writeLog("warning failed to find module containing current rip");
    return return_error;
  }
  auto objFile = module.getValue()->GetObjectFile();
  auto baseStartAddr =
      objFile->GetBaseAddress().GetLoadAddress(executionContext.GetTargetPtr());
  auto runTimeInfoTable = getRunTimeTable(baseStartAddr);
  if (!runTimeInfoTable) {
    writeLog("no destructors");
    return return_error;
  }
  auto runTimeInfo =
      runTimeInfoTable.value().findRunTime(youngestContext.GetPC());
  if (!runTimeInfo) {
    writeLog("no destructors");
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
        baseStartAddr + runTimeInfo->UnwindInfoAddress + +sizeof(UNWIND_INFO) +
            moreCountOfCodesNum * sizeof(UNWIND_CODE),
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
      writeLog("not pe");
      return return_error;
    }
    std::vector<IptoStateMapEntry2> ipoEntries(funcInfo.nIPMapEntries);
    executionContext.GetProcessPtr()->ReadMemory(
        baseStartAddr + funcInfo.dispIPtoStateMap, (void *)ipoEntries.data(),
        ipoEntries.size() * sizeof(IptoStateMapEntry), return_error);
    if (!return_error.Success()) {
      return return_error;
    }
    int currentState =
        findState(youngestContext.GetPC() - baseStartAddr, ipoEntries);
    if (-1 == currentState) {
      writeLog("no desturctors to call");
      return return_error;
    }
    int functionToJumpToState = -1;
    if (addressToJumpTo) {
      functionToJumpToState = findState(
          (char *)addressToJumpTo - (char *)baseStartAddr, ipoEntries);
    }
    if (-1 == funcInfo.maxState) {
      writeLog("no desturctors to call");
      return return_error;
    }
    std::vector<UnwindMapEntry2> unwindMap(funcInfo.maxState);
    executionContext.GetProcessPtr()->ReadMemory(
        baseStartAddr + funcInfo.dispUnwindMap, (void *)unwindMap.data(),
        unwindMap.size() * sizeof(UnwindMapEntry2), return_error);
    if (!return_error.Success()) {
      return return_error;
    }
    std::vector<void *> destructorsFunctions;
    while (currentState != -1 && unwindMap[currentState].action &&
           currentState != functionToJumpToState) {
      auto funcAddr = baseStartAddr + unwindMap[currentState].action;
      destructorsFunctions.push_back((void *)funcAddr);
      currentState = unwindMap[currentState].toState;
    }
    if (!destructorsFunctions.empty()) {
      lldb_private::EvaluateExpressionOptions options;
      options.SetDebug(false);
      options.SetIgnoreBreakpoints(false);
      options.SetUnwindOnError(false);
      options.SetKeepInMemory(false);
      options.SetTryAllThreads(false);
      options.SetStopOthers(true);
      struct StructToPass {
        size_t rsp;
        size_t numOfDestructors;
        // void *destructors[];
      };
      StructToPass structToPass;
      structToPass.rsp = youngestContext.GetSP();
      structToPass.numOfDestructors = destructorsFunctions.size();
      std::vector<void *> destructors(structToPass.numOfDestructors);
      for (size_t i = 0; i < structToPass.numOfDestructors; i++) {
        destructors[i] = destructorsFunctions[i];
      }
      auto structToPassRemote = g_platform->allocateMemory(
          sizeof(void *) * destructorsFunctions.size() + sizeof(StructToPass));
      g_platform->writeMemory(structToPassRemote, &structToPass,
                              sizeof(StructToPass));
      g_platform->writeMemory((char *)structToPassRemote + sizeof(StructToPass),
                              destructors.data(),
                              sizeof(void *) * destructorsFunctions.size());
      std::vector<uint64_t> args;
      args.push_back((uint64_t)structToPassRemote);
      writeLog("calling destructors");
      g_platform->runFunc(g_platform->getCallDestructorsFunction(), args);
      g_platform->deallocateMemory(structToPassRemote);
    } else {
      writeLog("no destructors to call");
    }
  } else {
    writeLog("no desturctors to call");
  }
  return return_error;
}

lldb_private::Status
returnFromCurrentFrame(lldb_private::Thread &thread,
                       lldb_private::ExecutionContext &executionContext,
                       bool shouldRunDestructors, size_t frameNumsToReturn) {
  lldb_private::Status return_error;

  lldb_private::MyRegisterContext youngestContext(thread, 0);
  for (uint32_t i = 0; i < frameNumsToReturn; i++) {
    lldb_private::MyRegisterContext olderFrameContext(thread, 1);
    lldb::DataBufferSP olderFrameRegisters;
    olderFrameContext.ReadAllRegisterValues(olderFrameRegisters);
    if (shouldRunDestructors) {
      auto res = callDestructors(thread, executionContext);
      if (!res.Success()) {
        writeLog("failed to call destructors although they exists");
      }
    }
    youngestContext.WriteAllRegisterValues(olderFrameRegisters);
  }
  return return_error;
}
