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

#include "blink.h"
#include <iostream>
#include <memory>
#include <string>
#include "Platform.h"

#ifdef BAZEL_BUILD
#include "examples/protos/helloworld.grpc.pb.h"
#else
#include "LinkCommand.grpc.pb.h"
#include "Server.h"
#endif

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using LinkCommand::Greeter;
using LinkCommand::LinkCommandReply;
using LinkCommand::LinkCommandRequest;

// Logic and data behind the server's behavior.
grpc::Status
GreeterServiceImpl::Compile(grpc::ServerContext *context,
                            const LinkCommand::LinkCommandRequest *request,
                            LinkCommand::LinkCommandReply *reply) {
  auto thread = g_threadFactory->create(GetCurrentThreadId());
  g_platform->setCurrentThread(thread);
  g_platform->verifyPreConditions();
  auto result = g_blink.link(request);
  if (!result.m_success) {
    reply->set_message(result.m_err);
  }
  reply->set_success(result.m_success);
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

GrpcServer createServer(size_t port)
{
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
