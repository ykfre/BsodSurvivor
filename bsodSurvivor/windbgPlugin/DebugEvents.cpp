#include "Platform.h"

#include "ExtClass.h"

#include "FunctionRunManager.h"
#include "DebugEvents.h"
#include "blink/blink.h"

// Exceptions include breaks which cannot
// be mapped to an existing breakpoint
// instance.

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::Exception(
    PEXCEPTION_RECORD64 Exception, ULONG FirstChance) noexcept {
  return 0;
}

// Any of these values can be zero if they
// cannot be provided by the engine.
// Currently the kernel does not return thread
// or process change events.

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::CreateThread(
    ULONG64 Handle, ULONG64 DataOffset, ULONG64 StartOffset) noexcept {
  return 0;
}

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::ExitThread(ULONG ExitCode) noexcept {
  return 0;
}

// Any of these values can be zero if they
// cannot be provided by the engine.

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::CreateProcessW(
    ULONG64 ImageFileHandle, ULONG64 Handle, ULONG64 BaseOffset,
    ULONG ModuleSize, PCSTR ModuleName, PCSTR ImageName, ULONG CheckSum,
    ULONG TimeDateStamp, ULONG64 InitialThreadHandle, ULONG64 ThreadDataOffset,
    ULONG64 StartOffset) noexcept {
  return 0;
}

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::ExitProcess(ULONG ExitCode) noexcept {
  return 0;
}

// Any of these values may be zero.

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::LoadModule(
    ULONG64 ImageFileHandle, ULONG64 BaseOffset, ULONG ModuleSize, PCSTR ModuleName, PCSTR ImageName,
                            ULONG CheckSum, ULONG TimeDateStamp) noexcept {
  return 0;
}

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::UnloadModule(
    PCSTR ImageBaseName, ULONG64 BaseOffset) noexcept {
  if (g_blink.getDllToChange() && (void*)BaseOffset == g_blink.getDllToChange()->getStartAddress()) {
     g_blink.resetDllToChange();
  }
  return 0;
}

 STDMETHODIMP_(HRESULT __stdcall) DebugEvents::SystemError(ULONG Error, ULONG Level) noexcept {
  return 0;
}

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

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::SessionStatus(ULONG Status) noexcept {
  return 0;
}

// Debuggee state, such as registers or data spaces,
// has changed.

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::ChangeDebuggeeState(ULONG Flags, ULONG64 Argument) noexcept {
  return 0;
}

// Engine state has changed.

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::ChangeEngineState(ULONG Flags, ULONG64 Argument) noexcept {
  return 0;
}

// Symbol state has changed.

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::ChangeSymbolState(ULONG Flags, ULONG64 Argument) noexcept {
  return 0;
}

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::QueryInterface(REFIID InterfaceId, PVOID *Interface) noexcept {
  *Interface = NULL;

  if (IsEqualIID(InterfaceId, __uuidof(IUnknown)) ||
      IsEqualIID(InterfaceId, __uuidof(IDebugEventCallbacks))) {
    *Interface = (IDebugEventCallbacks *)this;
    AddRef();
    return S_OK;
  } else {
    return E_NOINTERFACE;
  }
}

 STDMETHODIMP_(ULONG __stdcall) DebugEvents::AddRef() noexcept {
  // This class is designed to be static so
  // there's no true refcount.
  return 1;
}

 STDMETHODIMP_(ULONG __stdcall) DebugEvents::Release() noexcept {
  // This class is designed to be static so
  // there's no true refcount.
  return 0;
}

// The engine calls GetInterestMask once when
// the event callbacks are set for a client.

 STDMETHODIMP_(HRESULT __stdcall)
    DebugEvents::GetInterestMask(PULONG Mask) noexcept {
   *Mask = DEBUG_EVENT_BREAKPOINT | DEBUG_EVENT_UNLOAD_MODULE |
           DEBUG_EVENT_LOAD_MODULE;
  return 0;
}

HRESULT DebugEvents::Breakpoint(_In_ PDEBUG_BREAKPOINT Bp) noexcept {
  {
    ULONG breakType;
    ULONG temp;
    Bp->GetType(&breakType, &temp);
    if (breakType == DEBUG_BREAKPOINT_CODE) {
      ULONG64 bpOffset;
      Bp->GetOffset(&bpOffset);
      if (g_ExtInstance.m_bpAndCounters.find(bpOffset) !=
          g_ExtInstance.m_bpAndCounters.end()) {
        if (g_ExtInstance.m_bpAndCounters[bpOffset] > 0) {
          auto thread = g_threadFactory->create(0);
          g_functionRunManager.notifyFunctionEnded(thread->getThreadId());
        }
      }
    }
  }
  Bp->Release();
  return 0;
}
