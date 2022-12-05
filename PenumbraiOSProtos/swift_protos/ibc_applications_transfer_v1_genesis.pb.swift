// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/applications/transfer/v1/genesis.proto
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

/// GenesisState defines the ibc-transfer genesis state
public struct Ibc_Applications_Transfer_V1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var portID: String = String()

  public var denomTraces: [Ibc_Applications_Transfer_V1_DenomTrace] = []

  public var params: Ibc_Applications_Transfer_V1_Params {
    get {return _params ?? Ibc_Applications_Transfer_V1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Ibc_Applications_Transfer_V1_Params?
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Ibc_Applications_Transfer_V1_GenesisState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "ibc.applications.transfer.v1"

extension Ibc_Applications_Transfer_V1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "port_id"),
    2: .standard(proto: "denom_traces"),
    3: .same(proto: "params"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.portID) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomTraces) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.portID.isEmpty {
      try visitor.visitSingularStringField(value: self.portID, fieldNumber: 1)
    }
    if !self.denomTraces.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomTraces, fieldNumber: 2)
    }
    try { if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Applications_Transfer_V1_GenesisState, rhs: Ibc_Applications_Transfer_V1_GenesisState) -> Bool {
    if lhs.portID != rhs.portID {return false}
    if lhs.denomTraces != rhs.denomTraces {return false}
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}