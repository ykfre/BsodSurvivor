#pragma once
#pragma warning(push, 0)
#include <engextcpp.hpp>
#pragma warning(pop)


class DebugEvents : public IDebugEventCallbacks {
public:
  STDMETHODIMP
  QueryInterface(_In_ REFIID InterfaceId, _Out_ PVOID *Interface) noexcept;

  STDMETHODIMP_(ULONG)
  AddRef() noexcept;

  STDMETHODIMP_(ULONG)
  Release() noexcept;

  // IDebugEventCallbacks.

  // The engine calls GetInterestMask once when
  // the event callbacks are set for a client.
  STDMETHODIMP
  GetInterestMask(_Out_ PULONG Mask) noexcept;

  // A breakpoint event is generated when
  // a breakpoint exception is received and
  // it can be mapped to an existing breakpoint.
  // The callback method is given a reference
  // to the breakpoint and should release it when
  // it is done with it.
  STDMETHODIMP Breakpoint(_In_ PDEBUG_BREAKPOINT Bp) noexcept;

  // Exceptions include breaks which cannot
  // be mapped to an existing breakpoint
  // instance.
  STDMETHODIMP Exception(THIS_ _In_ PEXCEPTION_RECORD64 Exception,
                         _In_ ULONG FirstChance) noexcept;

  // Any of these values can be zero if they
  // cannot be provided by the engine.
  // Currently the kernel does not return thread
  // or process change events.
  STDMETHODIMP CreateThread(THIS_ _In_ ULONG64 Handle, _In_ ULONG64 DataOffset,
                            _In_ ULONG64 StartOffset) noexcept;

  STDMETHODIMP ExitThread(THIS_ _In_ ULONG ExitCode) noexcept;

  // Any of these values can be zero if they
  // cannot be provided by the engine.
  STDMETHODIMP CreateProcessW(THIS_ _In_ ULONG64 ImageFileHandle,
                              _In_ ULONG64 Handle, _In_ ULONG64 BaseOffset,
                              _In_ ULONG ModuleSize, _In_opt_ PCSTR ModuleName,
                              _In_opt_ PCSTR ImageName, _In_ ULONG CheckSum,
                              _In_ ULONG TimeDateStamp,
                              _In_ ULONG64 InitialThreadHandle,
                              _In_ ULONG64 ThreadDataOffset,
                              _In_ ULONG64 StartOffset) noexcept;
  _Analysis_noreturn_
      STDMETHOD(ExitProcess)(THIS_ _In_ ULONG ExitCode) noexcept;


  // Any of these values may be zero.
  STDMETHODIMP LoadModule(THIS_ _In_ ULONG64 ImageFileHandle,
                          _In_ ULONG64 BaseOffset, _In_ ULONG ModuleSize,
                          _In_opt_ PCSTR ModuleName, _In_opt_ PCSTR ImageName,
                          _In_ ULONG CheckSum,
                          _In_ ULONG TimeDateStamp) noexcept;

  STDMETHODIMP UnloadModule(THIS_ _In_opt_ PCSTR ImageBaseName,
                            _In_ ULONG64 BaseOffset) noexcept;

  STDMETHODIMP SystemError(THIS_ _In_ ULONG Error, _In_ ULONG Level) noexcept;

  // Session status is synchronous like the other
  // wait callbacks but it is called as the state
  // of the session is changing rather than at
  // specific events so its return value does not
  // influence waiting.  Implementations should just
  // return DEBUG_STATUS_NO_CHANGE.
  // Also, because some of the status
  // notifications are very early or very
  // late in the session lifetime there may not be
  // current processes or threads when the notification
  // is generated.
  STDMETHODIMP SessionStatus(THIS_ _In_ ULONG Status) noexcept;

  // The following callbacks are informational
  // callbacks notifying the provider about
  // changes in debug state.  The return value
  // of these callbacks is ignored.  Implementations
  // can not call back into the engine.

  // Debuggee state, such as registers or data spaces,
  // has changed.
  STDMETHODIMP ChangeDebuggeeState(THIS_ _In_ ULONG Flags,
                                   _In_ ULONG64 Argument) noexcept;
  // Engine state has changed.
  STDMETHODIMP ChangeEngineState(THIS_ _In_ ULONG Flags,
                                 _In_ ULONG64 Argument) noexcept;

  // Symbol state has changed.
  STDMETHODIMP ChangeSymbolState(THIS_ _In_ ULONG Flags,
                                 _In_ ULONG64 Argument) noexcept;
};
