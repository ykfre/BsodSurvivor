#pragma warning(push, 0)
#include "Utils.h"
#include "Logger.h"
#include <Windows.h>
#include <algorithm>
#include <fstream>
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

bool createProcess(const std::string &command, std::string &output, const std::string& workingDir) {
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
  const char* workingDirStr = nullptr;
  if (!workingDir.empty()) {
    workingDirStr = workingDir.c_str();
  }
  if (!CreateProcessA(nullptr, (char *)command.c_str(), nullptr, nullptr, true,
                      0, nullptr, workingDirStr, &si, &pi)) {
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

void abortIfFalse(bool condition, const std::string &message) {
  if (condition) {
    return;
  }
  if (IsDebuggerPresent()) {
    __debugbreak();
  }
  writeLog(message);
}

std::string lowerString(const std::string &str) {
  auto lowerStr = str;
  std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  return lowerStr;
}
