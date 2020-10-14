#include "eh_data.h"
#include "Platform.h"

RunTimeInfoTable::RunTimeInfoTable(const std::vector<RUNTIME_FUNCTION> &runtimeInfos,
                         void *moduleBaseAddress)
    : m_runtimeFunctions(runtimeInfos), m_moduleBase(moduleBaseAddress) {}

std::optional<RUNTIME_FUNCTION> RunTimeInfoTable::findRunTime(size_t rip) {
  rip -= (size_t)m_moduleBase;
  for (uint32_t i = 0; i < m_runtimeFunctions.size(); i++) {
    if (m_runtimeFunctions[i].BeginAddress <= rip &&
        m_runtimeFunctions[i].EndAddress >= rip) {
      return m_runtimeFunctions[i];
    }
  }
  return std::nullopt;
}

std::optional<RunTimeInfoTable> getRunTimeTable(size_t moduleStart) {
  IMAGE_DOS_HEADER pidh;
  size_t readSize =
      t_platform->readMemory((void *)moduleStart, &pidh, sizeof(pidh));

  if (readSize != sizeof(pidh)) {
    return std::nullopt;
  }
  IMAGE_NT_HEADERS pinh;
  size_t current_index = moduleStart + pidh.e_lfanew;
  readSize = t_platform->readMemory((void *)current_index, &pinh, sizeof(pinh));
  if (readSize != sizeof(pinh)) {
    return std::nullopt;
  }

  IMAGE_OPTIONAL_HEADER pioh;
  current_index += offsetof(IMAGE_NT_HEADERS, OptionalHeader);
  readSize = t_platform->readMemory((void*)current_index, &pioh,
                                    sizeof(IMAGE_OPTIONAL_HEADER));

  if (readSize != sizeof(IMAGE_OPTIONAL_HEADER)) {
    return std::nullopt;
  }

  auto exceptionDirectoryRva =
      pioh.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXCEPTION];

  std::vector<RUNTIME_FUNCTION> runtimesInfos(exceptionDirectoryRva.Size /
                                              sizeof(RUNTIME_FUNCTION));
  readSize = t_platform->readMemory(
      (char *)moduleStart +exceptionDirectoryRva.VirtualAddress,
      runtimesInfos.data(),
      runtimesInfos.size() * sizeof(RUNTIME_FUNCTION));
  if (readSize != runtimesInfos.size() * sizeof(RUNTIME_FUNCTION)) {
    return std::nullopt;
  }
  return RunTimeInfoTable(runtimesInfos, (void *)moduleStart);
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