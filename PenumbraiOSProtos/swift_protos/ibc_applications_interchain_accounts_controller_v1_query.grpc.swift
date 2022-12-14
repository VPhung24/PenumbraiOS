//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ibc/applications/interchain_accounts/controller/v1/query.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf

/// Query provides defines the gRPC querier service.
///
/// Usage: instantiate `Ibc_Applications_InterchainAccounts_Controller_V1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>
}

extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientProtocol {
  public var serviceName: String {
    return "ibc.applications.interchain_accounts.controller.v1.Query"
  }

  /// Params queries all parameters of the ICA controller submodule.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func params(
    _ request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Ibc_Applications_InterchainAccounts_Controller_V1_QueryNIOClient")
public final class Ibc_Applications_InterchainAccounts_Controller_V1_QueryClient: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ibc.applications.interchain_accounts.controller.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Ibc_Applications_InterchainAccounts_Controller_V1_QueryNIOClient: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the ibc.applications.interchain_accounts.controller.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query provides defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? { get }

  func makeParamsCall(
    _ request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeParamsCall(
    _ request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncClientProtocol {
  public func params(
    _ request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncClient: Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>]
}

public enum Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "ibc.applications.interchain_accounts.controller.v1.Query",
    methods: [
      Ibc_Applications_InterchainAccounts_Controller_V1_QueryClientMetadata.Methods.params,
    ]
  )

  public enum Methods {
    public static let params = GRPCMethodDescriptor(
      name: "Params",
      path: "/ibc.applications.interchain_accounts.controller.v1.Query/Params",
      type: GRPCCallType.unary
    )
  }
}

/// Query provides defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryProvider: CallHandlerProvider {
  var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerInterceptorFactoryProtocol? { get }

  /// Params queries all parameters of the ICA controller submodule.
  func params(request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>
}

extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryProvider {
  public var serviceName: Substring {
    return Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Params":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        userFunction: self.params(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// Query provides defines the gRPC querier service.
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerInterceptorFactoryProtocol? { get }

  /// Params queries all parameters of the ICA controller submodule.
  @Sendable func params(
    request: Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Ibc_Applications_InterchainAccounts_Controller_V1_QueryAsyncProvider {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerMetadata.serviceDescriptor
  }

  public var serviceName: Substring {
    return Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerMetadata.serviceDescriptor.fullName[...]
  }

  public var interceptors: Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerInterceptorFactoryProtocol? {
    return nil
  }

  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Params":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        wrapping: self.params(request:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

public protocol Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'params'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeParamsInterceptors() -> [ServerInterceptor<Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsRequest, Ibc_Applications_InterchainAccounts_Controller_V1_QueryParamsResponse>]
}

public enum Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "ibc.applications.interchain_accounts.controller.v1.Query",
    methods: [
      Ibc_Applications_InterchainAccounts_Controller_V1_QueryServerMetadata.Methods.params,
    ]
  )

  public enum Methods {
    public static let params = GRPCMethodDescriptor(
      name: "Params",
      path: "/ibc.applications.interchain_accounts.controller.v1.Query/Params",
      type: GRPCCallType.unary
    )
  }
}
