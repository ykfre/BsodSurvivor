#pragma warning(push, 0)
#include "CreateFileHook.grpc.pb.h"
#include "CreateFileHook.pb.h"
#include <codecvt>
#include <easyhook/easyhook.h>
#include <filesystem>
#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>
#include <iostream>
#include <locale>
#include <memory>
#include <thread>
#include <windows.h>
#pragma warning(pop)
using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;

#pragma comment(lib, "ws2_32.lib")
#include <map>
#include <mutex>
#include <thread>
std::unordered_map<std::string, std::string> g_originalFileToNewFile;
std::mutex g_originalFileToNewFileMutex;
class GreeterServiceImpl final : public CreateFileHook::Greeter::Service {
  grpc::Status
  SendPathData(grpc::ServerContext *context,
               const CreateFileHook::SendPathDataRequest *request,
               ::CreateFileHook::SendPathDataReply *reply) override {
    OutputDebugStringA(("called Send path data " + request->oldpath()).c_str());
    std::lock_guard<std::mutex> lock(g_originalFileToNewFileMutex);
    g_originalFileToNewFile[request->oldpath()] = request->newpath();
    return Status::OK;
  }

  grpc::Status
  ShouldSendPath(grpc::ServerContext *context,
                 const CreateFileHook::ShouldSendPathDataRequest *request,
                 ::CreateFileHook::ShouldSendPathDataReply *reply) override {
    OutputDebugStringA("called should Send path data");

    std::lock_guard<std::mutex> lock(g_originalFileToNewFileMutex);
    reply->set_should(g_originalFileToNewFile.find(request->path()) ==
                      g_originalFileToNewFile.end());
    return Status::OK;
  }

  grpc::Status ClearPaths(grpc::ServerContext *context,
                          const CreateFileHook::Empty *request,
                          ::CreateFileHook::Empty *reply) override {
    OutputDebugStringA("called clear path data");

    std::lock_guard<std::mutex> lock(g_originalFileToNewFileMutex);
    for (const auto &pair : g_originalFileToNewFile) {
      auto filePath = pair.first;
      SYSTEMTIME thesystemtime;
      GetSystemTime(&thesystemtime);
      // getthe handle to the file
      HANDLE file = CreateFileA(filePath.c_str(), FILE_WRITE_ATTRIBUTES,
                                FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
                                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
      if (INVALID_HANDLE_VALUE == file) {
        continue;
      }
      FILETIME thefiletime;

      SystemTimeToFileTime(&thesystemtime, &thefiletime);
      // set the filetime on the file
      SetFileTime(file, (LPFILETIME)NULL, (LPFILETIME)NULL, &thefiletime);

      // close our handle.
      CloseHandle(file);
    }
    g_originalFileToNewFile.clear();
    return Status::OK;
  }
};

void *createFileHook(wchar_t *fileName, _In_ DWORD dwDesiredAccess,
                     _In_ DWORD dwShareMode,
                     _In_opt_ LPSECURITY_ATTRIBUTES lpSecurityAttributes,
                     _In_ DWORD dwCreationDisposition,
                     _In_ DWORD dwFlagsAndAttributes,
                     _In_opt_ HANDLE hTemplateFile) {
  OutputDebugStringA("called create file hook");

  std::wstring fileNameString;
  if (fileName) {
    fileNameString = fileName;
    auto absolutePath = std::filesystem::absolute(fileName).string();
    OutputDebugStringA(
        ("called create file hook " + std::string(absolutePath)).c_str());
    std::lock_guard<std::mutex> lock(g_originalFileToNewFileMutex);
    if (g_originalFileToNewFile.end() !=
        g_originalFileToNewFile.find(absolutePath)) {
      OutputDebugStringA(
          ("hooking file open to " + g_originalFileToNewFile[absolutePath])
              .c_str());
      std::wstring_convert<std::codecvt_utf8_utf16<wchar_t>> converter;
      fileNameString =
          converter.from_bytes(g_originalFileToNewFile[absolutePath]);
    }
  }

  return CreateFileW(fileNameString.c_str(), dwDesiredAccess, dwShareMode,
                     lpSecurityAttributes, dwCreationDisposition,
                     dwFlagsAndAttributes, hTemplateFile);
}

void realMain() {
  try {
    OutputDebugStringA("called realMain");

    // Make sure that dllmain lock will fucked up.
    Sleep(1500);
    auto hook = HOOK_TRACE_INFO();
    auto hookRes = LhInstallHook(
        GetProcAddress(GetModuleHandleA("kernel32"), "CreateFileW"),
        createFileHook, nullptr, &hook);
    ULONG ACLEntries[1] = {0};
    hookRes = LhSetExclusiveACL(ACLEntries, 0, &hook);

    auto service = std::make_shared<GreeterServiceImpl>();
    std::string server_address("0.0.0.0:" + std::to_string(54000));

    grpc::EnableDefaultHealthCheckService(true);
    grpc::reflection::InitProtoReflectionServerBuilderPlugin();
    ServerBuilder builder;
    // Listen on the given address without any authentication mechanism.
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    // Register "service" as the instance through which we'll communicate with
    // clients. In this case it corresponds to an *synchronous* service.
    builder.RegisterService(service.get());
    // Finally assemble the server.
    std::shared_ptr<Server> server(builder.BuildAndStart());
    server->Wait();
  } catch (...) {
  }
}
BOOL WINAPI DllMain(HINSTANCE hinstDLL, // handle to DLL module
                    DWORD fdwReason,    // reason for calling function
                    LPVOID lpReserved)  // reserved
{
  // Perform actions based on the reason for calling.
  switch (fdwReason) {
  case DLL_PROCESS_ATTACH: {
    std::thread t(realMain);
    t.detach();
    break;
  }
  case DLL_THREAD_ATTACH:
    // Do thread-specific initialization.
    break;

  case DLL_THREAD_DETACH:
    // Do thread-specific cleanup.
    break;

  case DLL_PROCESS_DETACH:
    // Perform any necessary cleanup.
    break;
  }
  return TRUE; // Successful DLL_PROCESS_ATTACH.
}