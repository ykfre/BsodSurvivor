/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
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
  void write(const std::string &message) override {
    auto reply = LinkCommandReply();
    reply.set_islogging(true);
    reply.set_message(message);
    m_reply->Write(reply);
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
  auto dlls = std::vector<std::shared_ptr<LoadedDll>>{g_blink.getDllToChange()};
  auto ordinaryDlls = g_blink.getOrdinaryDlls();
  dlls.insert(dlls.begin(), ordinaryDlls.begin(), ordinaryDlls.end());
  bool res = commands::runCommand(
      [&request]() {
        std::stringstream ss;
        ss << std::hex << g_blink.getDllToChange()->getStartAddress();
        writeLog("main module is loaded at " + ss.str());
        auto result = g_blink.link(request);
        if (!result.m_success) {
          writeLog(result.m_err);
        }
        return result.m_success;
      },
      CommonCommandArgs{0}, dlls);
  auto message = LinkCommandReply();

  message.set_islogging(false);
  message.set_success(res);
  auto options = grpc::WriteOptions();
  reply->WriteLast(message, options);
  t_logger.reset();
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
