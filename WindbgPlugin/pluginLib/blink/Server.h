#pragma once

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>
#include <memory>

#include "LinkCommand.grpc.pb.h"

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>

class GreeterServiceImpl final : public LinkCommand::Greeter::Service {
  grpc::Status Compile(grpc::ServerContext *context,
                       const LinkCommand::LinkCommandRequest *request,
                       LinkCommand::LinkCommandReply *reply) override;

  grpc::Status
  ShouldSendPathData(grpc::ServerContext *context,
                     const LinkCommand::ShouldSendPathDataRequest *request,
                     LinkCommand::ShouldSendPathDataReply *reply) override;

  grpc::Status
  SendPathData(grpc::ServerContext *context,
                     const LinkCommand::SendPathDataRequest *request,
                     LinkCommand::SendPathDataReply *reply) override;
};

struct GrpcServer {
  std::shared_ptr<grpc::Server> server;
  std::shared_ptr<GreeterServiceImpl> service;
};

GrpcServer createServer(size_t port);