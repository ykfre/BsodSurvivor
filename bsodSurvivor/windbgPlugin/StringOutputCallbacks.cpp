#include "StringOutputCallbacks.h"

STDMETHODIMP_(HRESULT __stdcall) StringOutputCallbacks::QueryInterface (REFIID InterfaceId,
                                      PVOID *Interface) noexcept {
  *Interface = NULL;

  if (IsEqualIID(InterfaceId, __uuidof(IUnknown)) ||
      IsEqualIID(InterfaceId, __uuidof(IDebugOutputCallbacks))) {
    *Interface = (IDebugOutputCallbacks *)this;
    AddRef();
    return S_OK;
  } else {
    return E_NOINTERFACE;
  }
}

STDMETHODIMP_(ULONG __stdcall) StringOutputCallbacks::AddRef(void) noexcept {
  // This class is designed to be static so
  // there's no true refcount.
  return 1;
}

STDMETHODIMP_(ULONG __stdcall) StringOutputCallbacks::Release(void) noexcept {
  // This class is designed to be static so
  // there's no true refcount.
  return 0;
}

STDMETHODIMP_(HRESULT __stdcall)
    StringOutputCallbacks::Output(ULONG Mask, PCSTR Text) noexcept {
  UNREFERENCED_PARAMETER(Mask);
  m_text += std::string(Text);
  return S_OK;
}

ULONG StringOutputCallbacks::SupportedMask() {
  return DEBUG_OUTPUT_NORMAL | DEBUG_OUTPUT_ERROR;
}

void StringOutputCallbacks::clear() { m_text.clear(); }
