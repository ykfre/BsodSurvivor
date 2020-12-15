#pragma once

#include "CommonCommandArgs.h"
#include "DebugEvents.h"
#include "Event.h"
#include "StringOutputCallbacks.h"
#pragma warning(push, 0)
#include <engextcpp.hpp>
#pragma warning(pop)
#include <functional>
#include <map>
#include <memory>
#include <mutex>
#include <vector>

class EXT_CLASS : public ExtExtension {
public:
  void Uninitialize() override;
  EXT_COMMAND_METHOD(returnwithout);
  EXT_COMMAND_METHOD(returnwith);
  EXT_COMMAND_METHOD(returntoframewithout);
  EXT_COMMAND_METHOD(returntoframewith);
  EXT_COMMAND_METHOD(execute);
  EXT_COMMAND_METHOD(jump);
  EXT_COMMAND_METHOD(reloadblinkmodules);

  void log(const std::string &output);
  HRESULT initializeThreadGlobals();
  HRESULT Initialize() override;

  void onLoadDynamicModule(const std::shared_ptr<LoadedDll> &dll);
  void onUnLoadDynamicModule(const std::shared_ptr<LoadedDll> &dll);
  bool isKernelDebugger();
  std::map<size_t, int> m_bpAndCounters;
  std::shared_ptr<size_t> m_event;
  inline static thread_local std::shared_ptr<IDebugClient5> t_debugClient5;
  inline static thread_local std::shared_ptr<IDebugClient> t_debugClient;
  inline static  std::shared_ptr<IDebugControl> g_control;

  inline static thread_local std::shared_ptr<IDebugControl> t_control;
  inline static thread_local std::shared_ptr<IDebugSymbols> t_symbols;
  inline static thread_local std::shared_ptr<IDebugSymbols3> t_symbols3;

  inline static thread_local std::shared_ptr<IDebugRegisters> t_registers;

  inline static thread_local std::shared_ptr<IDebugRegisters2> t_registers2;
  inline static thread_local std::shared_ptr<IDebugDataSpaces> t_debug;
  inline static thread_local StringOutputCallbacks t_output;

private:
  void
  executeCommand(const std::function<bool(CommonCommandArgs &args)> &command);
  DebugEvents m_debugEvents;
  std::shared_ptr<void *> m_hook;
};

inline EXT_CLASS g_ExtInstance;
