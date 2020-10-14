#pragma once

#include "CommonCommandArgs.h"
#include "DebugEvents.h"
#include "Event.h"
#include "Module.h"
#include "StringOutputCallbacks.h"
#include <engextcpp.hpp>
#include <map>
#include <memory>
#include <mutex>
#include <functional>
#include <vector>



class EXT_CLASS : public ExtExtension {
public:
  void Uninitialize() override;
  EXT_COMMAND_METHOD(returnwithout);
  EXT_COMMAND_METHOD(returnwith);
  EXT_COMMAND_METHOD(returntoframewithout);
  EXT_COMMAND_METHOD(returntoframewith);
  EXT_COMMAND_METHOD(execute);

  void log(const std::string &output);
  HRESULT initializeGlobals();
  HRESULT Initialize() override;

  std::vector<Module> getModules();

  std::map<size_t, int> m_bpAndCounters;

  inline static thread_local std::shared_ptr<IDebugClient5> t_debugClient5;
  inline static thread_local std::shared_ptr<IDebugClient> t_debugClient;
  inline static thread_local std::shared_ptr<IDebugControl> t_control;
  inline static thread_local std::shared_ptr<IDebugSymbols> t_symbols;
  inline static thread_local std::shared_ptr<IDebugSymbols3> t_symbols3;

  inline static thread_local std::shared_ptr<IDebugRegisters> t_registers;

  inline static thread_local std::shared_ptr<IDebugRegisters2> t_registers2;
  inline static thread_local std::shared_ptr<IDebugDataSpaces> t_debug;

  bool isKernelDebugger();
  inline static thread_local StringOutputCallbacks t_output;

private:
  void
  executeCommand(const std::function<bool(CommonCommandArgs &args)> &command);

  DebugEvents m_debugEvents;
};

inline EXT_CLASS g_ExtInstance;
