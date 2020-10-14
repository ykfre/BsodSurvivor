//===-- MyRegisterContext.h -------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#if defined(__x86_64__) || defined(_M_X64)
#ifndef liblldb_MyRegisterContext_h_
#define liblldb_MyRegisterContext_h_
#include "Plugins/Process/Utility/RegisterContext_x86.h"
#include "Plugins/Process/Utility/lldb-x86-register-enums.h"
#include <bitset>

#include "Plugins\Process\Windows\Common\NativeRegisterContextWindows.h"
#include "lldb/Target/RegisterContext.h"
#include "lldb/lldb-forward.h"

namespace lldb_private {

class MyRegisterContext : public lldb_private::RegisterContext {
public:
  MyRegisterContext(Thread &thread, uint32_t concrete_frame_idx);

  size_t GetRegisterSetCount() override;

  RegisterSet *GetRegisterSet(size_t set_index) override;

  bool ReadRegister(const RegisterInfo *reg_info,
                    RegisterValue &reg_value) override;

  bool WriteRegister(const RegisterInfo *reg_info,
                     const RegisterValue &reg_value) override;

  bool ReadAllRegisterValues(lldb::DataBufferSP &data_sp) override;

  bool WriteAllRegisterValues(const lldb::DataBufferSP &data_sp) override;

  size_t GetRegisterCount() override;

  void InvalidateAllRegisters() override;

  uint32_t ConvertRegisterKindToRegisterNumber(lldb::RegisterKind kind,
                                               uint32_t num) override;

  RegisterInfo *GetRegisterInfoAtIndex(size_t reg_index) override;

private:
  std::map<std::string, std::bitset<128>> m_regNameToValue;
  ArchSpec m_arch;
  std::unique_ptr<RegisterInfoInterface> m_register_info_interface_up;
};

} // namespace lldb_private

#endif // liblldb_MyRegisterContext_h_
#endif // defined(__x86_64__) || defined(_M_X64)