#pragma comment(lib, "ws2_32.lib")
#pragma comment(lib, "ws2_32.lib")

#include "Commands.h"
#include "Platform.h"
#include "blink.h"
#include <iostream>
#include <memory>
#include <sstream>
#include <string>

#ifdef BAZEL_BUILD
#include "examples/protos/helloworld.grpc.pb.h"
#else
#include "LinkCommand.grpc.pb.h"
#include "Server.h"
#endif
#include "Logger.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using LinkCommand::Greeter;
using LinkCommand::LinkCommandReply;
using LinkCommand::LinkCommandRequest;

class VsLogger : public Logger {
public:
  VsLogger(grpc::ServerWriter<::LinkCommand::LinkCommandReply> *reply) {
    m_reply = reply;
  }

  bool write(const std::string &message) override {
    auto reply = LinkCommandReply();
    reply.set_islogging(true);
    reply.set_message(message);
    m_reply->Write(reply);
    return true;
  }

private:
  grpc::ServerWriter<::LinkCommand::LinkCommandReply> *m_reply;
};

// Logic and data behind the server's behavior.
grpc::Status GreeterServiceImpl::Compile(
    grpc::ServerContext *context,
    const LinkCommand::LinkCommandRequest *request,
    grpc::ServerWriter<::LinkCommand::LinkCommandReply> *reply) {
  auto thread = g_threadFactory->create(GetCurrentThreadId());
  t_logger = std::make_shared<VsLogger>(reply);
  g_platform->setCurrentThread(thread);
  auto commonArgs = CommonCommandArgs{0};
  auto dlls = g_blink.getAllDlls();
  bool res = commands::runCommand(
      [&request](CommonCommandArgs &args) {
        return commands::blink(args, request);
      },
      commonArgs, dlls);
  t_logger = g_logger;
  auto common = CommonCommandArgs{0};
  commands::runCommand(
      [&common](const CommonCommandArgs &) {
        commands::jumpToMostUpdatedFunction(common);
        return true;
      },
      common, dlls);
  auto message = LinkCommandReply();

  message.set_islogging(false);
  message.set_success(res);
  auto options = grpc::WriteOptions();
  reply->WriteLast(message, options);
  return Status::OK;
}

grpc::Status GreeterServiceImpl::ShouldSendPathData(
    grpc::ServerContext *context,
    const LinkCommand::ShouldSendPathDataRequest *request,
    LinkCommand::ShouldSendPathDataReply *reply) {

  auto thread = g_threadFactory->create(GetCurrentThreadId());
  reply->set_should(g_blink.shouldAddFilePathToHook(request->path()));
  return Status::OK;
}

grpc::Status GreeterServiceImpl::SendPathData(
    grpc::ServerContext *context,
    const LinkCommand::SendPathDataRequest *request,
    LinkCommand::SendPathDataReply *reply) {

  auto thread = g_threadFactory->create(GetCurrentThreadId());
  g_blink.addFilePathToHook(request->path(), request->data());
  return Status::OK;
}

GrpcServer createServer(size_t port) {
  auto service = std::make_shared<GreeterServiceImpl>();
  std::string server_address("0.0.0.0:" + std::to_string(port));

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
  return GrpcServer{server, service};
}
