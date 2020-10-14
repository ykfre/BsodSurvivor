#pragma once
#include <engextcpp.hpp>
#include <string>

class StringOutputCallbacks : public IDebugOutputCallbacks {
public:
  STDMETHODIMP
  QueryInterface(THIS_ _In_ REFIID InterfaceId,
                 _Out_ PVOID *Interface) noexcept;

  STDMETHODIMP_(ULONG)
  AddRef(THIS) noexcept;

  STDMETHODIMP_(ULONG)
  Release(THIS) noexcept;

  STDMETHODIMP
  Output(THIS_ _In_ ULONG Mask, _In_ PCSTR Text) noexcept;
  ULONG SupportedMask();
  void clear();
  std::string m_text;
};
