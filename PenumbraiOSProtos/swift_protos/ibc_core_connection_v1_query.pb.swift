// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/core/connection/v1/query.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// QueryConnectionRequest is the request type for the Query/Connection RPC
/// method
public struct Ibc_Core_Connection_V1_QueryConnectionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// connection unique identifier
  public var connectionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// QueryConnectionResponse is the response type for the Query/Connection RPC
/// method. Besides the connection end, it includes a proof and the height from
/// which the proof was retrieved.
public struct Ibc_Core_Connection_V1_QueryConnectionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// connection associated with the request identifier
  public var connection: Ibc_Core_Connection_V1_ConnectionEnd {
    get {return _connection ?? Ibc_Core_Connection_V1_ConnectionEnd()}
    set {_connection = newValue}
  }
  /// Returns true if `connection` has been explicitly set.
  public var hasConnection: Bool {return self._connection != nil}
  /// Clears the value of `connection`. Subsequent reads from it will return its default value.
  public mutating func clearConnection() {self._connection = nil}

  /// merkle proof of existence
  public var proof: Data = Data()

  /// height at which the proof was retrieved
  public var proofHeight: Ibc_Core_Client_V1_Height {
    get {return _proofHeight ?? Ibc_Core_Client_V1_Height()}
    set {_proofHeight = newValue}
  }
  /// Returns true if `proofHeight` has been explicitly set.
  public var hasProofHeight: Bool {return self._proofHeight != nil}
  /// Clears the value of `proofHeight`. Subsequent reads from it will return its default value.
  public mutating func clearProofHeight() {self._proofHeight = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _connection: Ibc_Core_Connection_V1_ConnectionEnd?
  fileprivate var _proofHeight: Ibc_Core_Client_V1_Height?
}

/// QueryConnectionsRequest is the request type for the Query/Connections RPC
/// method
public struct Ibc_Core_Connection_V1_QueryConnectionsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var pagination: Cosmos_Base_Query_V1beta1_PageRequest {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageRequest()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageRequest?
}

/// QueryConnectionsResponse is the response type for the Query/Connections RPC
/// method.
public struct Ibc_Core_Connection_V1_QueryConnectionsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// list of stored connections of the chain.
  public var connections: [Ibc_Core_Connection_V1_IdentifiedConnection] = []

  /// pagination response
  public var pagination: Cosmos_Base_Query_V1beta1_PageResponse {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageResponse()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  /// query block height
  public var height: Ibc_Core_Client_V1_Height {
    get {return _height ?? Ibc_Core_Client_V1_Height()}
    set {_height = newValue}
  }
  /// Returns true if `height` has been explicitly set.
  public var hasHeight: Bool {return self._height != nil}
  /// Clears the value of `height`. Subsequent reads from it will return its default value.
  public mutating func clearHeight() {self._height = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageResponse?
  fileprivate var _height: Ibc_Core_Client_V1_Height?
}

/// QueryClientConnectionsRequest is the request type for the
/// Query/ClientConnections RPC method
public struct Ibc_Core_Connection_V1_QueryClientConnectionsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// client identifier associated with a connection
  public var clientID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// QueryClientConnectionsResponse is the response type for the
/// Query/ClientConnections RPC method
public struct Ibc_Core_Connection_V1_QueryClientConnectionsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// slice of all the connection paths associated with a client.
  public var connectionPaths: [String] = []

  /// merkle proof of existence
  public var proof: Data = Data()

  /// height at which the proof was generated
  public var proofHeight: Ibc_Core_Client_V1_Height {
    get {return _proofHeight ?? Ibc_Core_Client_V1_Height()}
    set {_proofHeight = newValue}
  }
  /// Returns true if `proofHeight` has been explicitly set.
  public var hasProofHeight: Bool {return self._proofHeight != nil}
  /// Clears the value of `proofHeight`. Subsequent reads from it will return its default value.
  public mutating func clearProofHeight() {self._proofHeight = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _proofHeight: Ibc_Core_Client_V1_Height?
}

/// QueryConnectionClientStateRequest is the request type for the
/// Query/ConnectionClientState RPC method
public struct Ibc_Core_Connection_V1_QueryConnectionClientStateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// connection identifier
  public var connectionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// QueryConnectionClientStateResponse is the response type for the
/// Query/ConnectionClientState RPC method
public struct Ibc_Core_Connection_V1_QueryConnectionClientStateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// client state associated with the channel
  public var identifiedClientState: Ibc_Core_Client_V1_IdentifiedClientState {
    get {return _identifiedClientState ?? Ibc_Core_Client_V1_IdentifiedClientState()}
    set {_identifiedClientState = newValue}
  }
  /// Returns true if `identifiedClientState` has been explicitly set.
  public var hasIdentifiedClientState: Bool {return self._identifiedClientState != nil}
  /// Clears the value of `identifiedClientState`. Subsequent reads from it will return its default value.
  public mutating func clearIdentifiedClientState() {self._identifiedClientState = nil}

  /// merkle proof of existence
  public var proof: Data = Data()

  /// height at which the proof was retrieved
  public var proofHeight: Ibc_Core_Client_V1_Height {
    get {return _proofHeight ?? Ibc_Core_Client_V1_Height()}
    set {_proofHeight = newValue}
  }
  /// Returns true if `proofHeight` has been explicitly set.
  public var hasProofHeight: Bool {return self._proofHeight != nil}
  /// Clears the value of `proofHeight`. Subsequent reads from it will return its default value.
  public mutating func clearProofHeight() {self._proofHeight = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _identifiedClientState: Ibc_Core_Client_V1_IdentifiedClientState?
  fileprivate var _proofHeight: Ibc_Core_Client_V1_Height?
}

/// QueryConnectionConsensusStateRequest is the request type for the
/// Query/ConnectionConsensusState RPC method
public struct Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// connection identifier
  public var connectionID: String = String()

  public var revisionNumber: UInt64 = 0

  public var revisionHeight: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// QueryConnectionConsensusStateResponse is the response type for the
/// Query/ConnectionConsensusState RPC method
public struct Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// consensus state associated with the channel
  public var consensusState: SwiftProtobuf.Google_Protobuf_Any {
    get {return _consensusState ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_consensusState = newValue}
  }
  /// Returns true if `consensusState` has been explicitly set.
  public var hasConsensusState: Bool {return self._consensusState != nil}
  /// Clears the value of `consensusState`. Subsequent reads from it will return its default value.
  public mutating func clearConsensusState() {self._consensusState = nil}

  /// client ID associated with the consensus state
  public var clientID: String = String()

  /// merkle proof of existence
  public var proof: Data = Data()

  /// height at which the proof was retrieved
  public var proofHeight: Ibc_Core_Client_V1_Height {
    get {return _proofHeight ?? Ibc_Core_Client_V1_Height()}
    set {_proofHeight = newValue}
  }
  /// Returns true if `proofHeight` has been explicitly set.
  public var hasProofHeight: Bool {return self._proofHeight != nil}
  /// Clears the value of `proofHeight`. Subsequent reads from it will return its default value.
  public mutating func clearProofHeight() {self._proofHeight = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _consensusState: SwiftProtobuf.Google_Protobuf_Any?
  fileprivate var _proofHeight: Ibc_Core_Client_V1_Height?
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Ibc_Core_Connection_V1_QueryConnectionRequest: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionResponse: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionsRequest: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionsResponse: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryClientConnectionsRequest: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryClientConnectionsResponse: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionClientStateRequest: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionClientStateResponse: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest: @unchecked Sendable {}
extension Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "ibc.core.connection.v1"

extension Ibc_Core_Connection_V1_QueryConnectionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "connection_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.connectionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.connectionID.isEmpty {
      try visitor.visitSingularStringField(value: self.connectionID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionRequest, rhs: Ibc_Core_Connection_V1_QueryConnectionRequest) -> Bool {
    if lhs.connectionID != rhs.connectionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "connection"),
    2: .same(proto: "proof"),
    3: .standard(proto: "proof_height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._connection) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.proof) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._proofHeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._connection {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.proof.isEmpty {
      try visitor.visitSingularBytesField(value: self.proof, fieldNumber: 2)
    }
    try { if let v = self._proofHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionResponse, rhs: Ibc_Core_Connection_V1_QueryConnectionResponse) -> Bool {
    if lhs._connection != rhs._connection {return false}
    if lhs.proof != rhs.proof {return false}
    if lhs._proofHeight != rhs._proofHeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pagination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionsRequest, rhs: Ibc_Core_Connection_V1_QueryConnectionsRequest) -> Bool {
    if lhs._pagination != rhs._pagination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "connections"),
    2: .same(proto: "pagination"),
    3: .same(proto: "height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.connections) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._height) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.connections.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.connections, fieldNumber: 1)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._height {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionsResponse, rhs: Ibc_Core_Connection_V1_QueryConnectionsResponse) -> Bool {
    if lhs.connections != rhs.connections {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs._height != rhs._height {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryClientConnectionsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryClientConnectionsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryClientConnectionsRequest, rhs: Ibc_Core_Connection_V1_QueryClientConnectionsRequest) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryClientConnectionsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryClientConnectionsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "connection_paths"),
    2: .same(proto: "proof"),
    3: .standard(proto: "proof_height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.connectionPaths) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.proof) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._proofHeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.connectionPaths.isEmpty {
      try visitor.visitRepeatedStringField(value: self.connectionPaths, fieldNumber: 1)
    }
    if !self.proof.isEmpty {
      try visitor.visitSingularBytesField(value: self.proof, fieldNumber: 2)
    }
    try { if let v = self._proofHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryClientConnectionsResponse, rhs: Ibc_Core_Connection_V1_QueryClientConnectionsResponse) -> Bool {
    if lhs.connectionPaths != rhs.connectionPaths {return false}
    if lhs.proof != rhs.proof {return false}
    if lhs._proofHeight != rhs._proofHeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionClientStateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionClientStateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "connection_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.connectionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.connectionID.isEmpty {
      try visitor.visitSingularStringField(value: self.connectionID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionClientStateRequest, rhs: Ibc_Core_Connection_V1_QueryConnectionClientStateRequest) -> Bool {
    if lhs.connectionID != rhs.connectionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionClientStateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionClientStateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "identified_client_state"),
    2: .same(proto: "proof"),
    3: .standard(proto: "proof_height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._identifiedClientState) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.proof) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._proofHeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._identifiedClientState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.proof.isEmpty {
      try visitor.visitSingularBytesField(value: self.proof, fieldNumber: 2)
    }
    try { if let v = self._proofHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionClientStateResponse, rhs: Ibc_Core_Connection_V1_QueryConnectionClientStateResponse) -> Bool {
    if lhs._identifiedClientState != rhs._identifiedClientState {return false}
    if lhs.proof != rhs.proof {return false}
    if lhs._proofHeight != rhs._proofHeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionConsensusStateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "connection_id"),
    2: .standard(proto: "revision_number"),
    3: .standard(proto: "revision_height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.connectionID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.revisionNumber) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.revisionHeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.connectionID.isEmpty {
      try visitor.visitSingularStringField(value: self.connectionID, fieldNumber: 1)
    }
    if self.revisionNumber != 0 {
      try visitor.visitSingularUInt64Field(value: self.revisionNumber, fieldNumber: 2)
    }
    if self.revisionHeight != 0 {
      try visitor.visitSingularUInt64Field(value: self.revisionHeight, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest, rhs: Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest) -> Bool {
    if lhs.connectionID != rhs.connectionID {return false}
    if lhs.revisionNumber != rhs.revisionNumber {return false}
    if lhs.revisionHeight != rhs.revisionHeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryConnectionConsensusStateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "consensus_state"),
    2: .standard(proto: "client_id"),
    3: .same(proto: "proof"),
    4: .standard(proto: "proof_height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._consensusState) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.proof) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._proofHeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._consensusState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 2)
    }
    if !self.proof.isEmpty {
      try visitor.visitSingularBytesField(value: self.proof, fieldNumber: 3)
    }
    try { if let v = self._proofHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse, rhs: Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse) -> Bool {
    if lhs._consensusState != rhs._consensusState {return false}
    if lhs.clientID != rhs.clientID {return false}
    if lhs.proof != rhs.proof {return false}
    if lhs._proofHeight != rhs._proofHeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
