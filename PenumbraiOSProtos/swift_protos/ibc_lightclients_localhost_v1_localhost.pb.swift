// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/lightclients/localhost/v1/localhost.proto
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

/// ClientState defines a loopback (localhost) client. It requires (read-only)
/// access to keys outside the client prefix.
public struct Ibc_Lightclients_Localhost_V1_ClientState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// self chain ID
  public var chainID: String = String()

  /// self latest block height
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

  fileprivate var _height: Ibc_Core_Client_V1_Height?
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Ibc_Lightclients_Localhost_V1_ClientState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "ibc.lightclients.localhost.v1"

extension Ibc_Lightclients_Localhost_V1_ClientState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "chain_id"),
    2: .same(proto: "height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.chainID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._height) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.chainID.isEmpty {
      try visitor.visitSingularStringField(value: self.chainID, fieldNumber: 1)
    }
    try { if let v = self._height {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Lightclients_Localhost_V1_ClientState, rhs: Ibc_Lightclients_Localhost_V1_ClientState) -> Bool {
    if lhs.chainID != rhs.chainID {return false}
    if lhs._height != rhs._height {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}