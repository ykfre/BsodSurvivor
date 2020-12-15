#pragma warning(push, 0)
#include "Utils.h"
#include "Logger.h"
#include <Windows.h>
#include <algorithm>
#include <fstream>
#include <tlhelp32.h>
#pragma warning(pop)

std::vector<std::string> splitString(const std::string &str,
                                     const std::string &delimiter) {
  std::vector<std::string> strings;

  std::string::size_type pos = 0;
  std::string::size_type prev = 0;
  while ((pos = str.find(delimiter, prev)) != std::string::npos) {
    strings.push_back(str.substr(prev, pos - prev));
    prev = pos + 1;
  }

  // To get the last substring (or only, if delimiter is not found)
  strings.push_back(str.substr(prev));

  return strings;
}

std::optional<std::vector<char>> readFile(const std::string &file_path) {
  std::ifstream file(file_path, std::ifstream::binary);
  if (!file) {
    return std::nullopt;
  }
  // get length of file:
  file.seekg(0, file.end);
  size_t length = file.tellg();
  file.seekg(0, file.beg);
  std::vector<char> result(length);
  file.read(result.data(), result.size());
  return result;
}

bool writeToFile(const std::string &filePath, const std::vector<char> &data) {
  std::ofstream f(filePath, std::ios::binary);
  f.write(data.data(), data.size());
  return (bool)f;
}

bool createProcess(const std::string &command, std::string &output,
                   const std::string &workingDir) {
  output = "";
  STARTUPINFOA si;
  PROCESS_INFORMATION pi;

  ZeroMemory(&si, sizeof(si));
  si.cb = sizeof(si);
  ZeroMemory(&pi, sizeof(pi));
  SECURITY_ATTRIBUTES saAttr = {};
  saAttr.nLength = sizeof(SECURITY_ATTRIBUTES);
  saAttr.bInheritHandle = TRUE;
  saAttr.lpSecurityDescriptor = NULL;
  si.wShowWindow = SW_HIDE;
  HANDLE hChildStd_OUT_Rd = NULL;
  HANDLE hChildStd_OUT_Wr = NULL;
  if (!CreatePipe(&hChildStd_OUT_Rd, &hChildStd_OUT_Wr, &saAttr, 0)) {
    output = "failed to read pipe";
    return false;
  }
  si.hStdError = hChildStd_OUT_Wr;
  si.hStdOutput = hChildStd_OUT_Wr;
  si.hStdInput = GetStdHandle(STD_INPUT_HANDLE);
  si.dwFlags |= STARTF_USESTDHANDLES;
  SetHandleInformation(hChildStd_OUT_Rd, HANDLE_FLAG_INHERIT, 0);
  const char *workingDirStr = nullptr;
  if (!workingDir.empty()) {
    workingDirStr = workingDir.c_str();
  }
  if (!CreateProcessA(nullptr, (char *)command.c_str(), nullptr, nullptr, true,
                      CREATE_NO_WINDOW, nullptr, workingDirStr, &si, &pi)) {
    output = "failed to create process " + std::to_string(GetLastError());
    return false;
  }

  CloseHandle(hChildStd_OUT_Wr);
  CHAR chBuf[2024];
  DWORD dwRead = 0;
  for (;;) {
    bool bSuccess =
        ReadFile(hChildStd_OUT_Rd, chBuf, sizeof(chBuf), &dwRead, NULL);
    if (!bSuccess || dwRead == 0) {
      break;
    }
    output += std::string(chBuf, chBuf + dwRead);
  }
  DWORD exitCode = 0;
  GetExitCodeProcess(pi.hProcess, &exitCode);

  CloseHandle(pi.hProcess);
  CloseHandle(pi.hThread);
  CloseHandle(hChildStd_OUT_Rd);
  if (exitCode) {
    return false;
  }
  return true;
}

int getParentProccessPid() {

  HANDLE hSnapshot;
  PROCESSENTRY32 pe32;
  DWORD ppid = 0, pid = GetCurrentProcessId();

  hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

  ZeroMemory(&pe32, sizeof(pe32));
  pe32.dwSize = sizeof(pe32);
  Process32First(hSnapshot, &pe32);

  do {
    if (pe32.th32ProcessID == pid) {
      ppid = pe32.th32ParentProcessID;
      break;
    }
  } while (Process32Next(hSnapshot, &pe32));
  CloseHandle(hSnapshot);
  return ppid;
}

void abortIfFalse(bool condition, const std::string &message) {
  if (condition) {
    return;
  }
  if (IsDebuggerPresent()) {
    __debugbreak();
  }
  writeLog(message);
}

bool loadRemoteDLL(void *hProcess, const char *dllPath) {

  // Allocate memory for DLL's path name to remote process
  LPVOID dllPathAddressInRemoteMemory =
      VirtualAllocEx(hProcess, NULL, strlen(dllPath), MEM_RESERVE | MEM_COMMIT,
                     PAGE_EXECUTE_READWRITE);
  if (dllPathAddressInRemoteMemory == NULL) {
    return false;
  }

  // Write DLL's path name to remote process
  BOOL succeededWriting = WriteProcessMemory(
      hProcess, dllPathAddressInRemoteMemory, dllPath, strlen(dllPath), NULL);

  if (!succeededWriting) {
    return false;
  } else {
    // Returns a pointer to the LoadLibrary address. This will be the same on
    // the remote process as in our current process.
    LPVOID loadLibraryAddress = (LPVOID)GetProcAddress(
        GetModuleHandle(L"kernel32.dll"), "LoadLibraryA");
    if (loadLibraryAddress == NULL) {
      return FALSE;
    } else {
      HANDLE remoteThread = CreateRemoteThread(
          hProcess, NULL, NULL, (LPTHREAD_START_ROUTINE)loadLibraryAddress,
          dllPathAddressInRemoteMemory, NULL, NULL);
      if (remoteThread == NULL) {
        return FALSE;
      }
    }
  }

  CloseHandle(hProcess);
  return true;
}

std::string lowerString(const std::string &str) {
  auto lowerStr = str;
  std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  return lowerStr;
}
