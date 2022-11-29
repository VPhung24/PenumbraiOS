// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/upgrade/v1beta1/upgrade.proto
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

/// Plan specifies information about a planned upgrade and when it should occur.
public struct Cosmos_Upgrade_V1beta1_Plan {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Sets the name for the upgrade. This name will be used by the upgraded
  /// version of the software to apply any special "on-upgrade" commands during
  /// the first BeginBlock method after the upgrade is applied. It is also used
  /// to detect whether a software version can handle a given upgrade. If no
  /// upgrade handler with this name has been set in the software, it will be
  /// assumed that the software is out-of-date when the upgrade Time or Height is
  /// reached and the software will exit.
  public var name: String = String()

  /// The time after which the upgrade must be performed.
  /// Leave set to its zero value to use a pre-defined Height instead.
  public var time: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _time ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_time = newValue}
  }
  /// Returns true if `time` has been explicitly set.
  public var hasTime: Bool {return self._time != nil}
  /// Clears the value of `time`. Subsequent reads from it will return its default value.
  public mutating func clearTime() {self._time = nil}

  /// The height at which the upgrade must be performed.
  /// Only used if Time is not set.
  public var height: Int64 = 0

  /// Any application specific upgrade info to be included on-chain
  /// such as a git commit that validators could automatically upgrade to
  public var info: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _time: SwiftProtobuf.Google_Protobuf_Timestamp?
}

/// SoftwareUpgradeProposal is a gov Content type for initiating a software
/// upgrade.
public struct Cosmos_Upgrade_V1beta1_SoftwareUpgradeProposal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var title: String = String()

  public var description_p: String = String()

  public var plan: Cosmos_Upgrade_V1beta1_Plan {
    get {return _plan ?? Cosmos_Upgrade_V1beta1_Plan()}
    set {_plan = newValue}
  }
  /// Returns true if `plan` has been explicitly set.
  public var hasPlan: Bool {return self._plan != nil}
  /// Clears the value of `plan`. Subsequent reads from it will return its default value.
  public mutating func clearPlan() {self._plan = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _plan: Cosmos_Upgrade_V1beta1_Plan?
}

/// CancelSoftwareUpgradeProposal is a gov Content type for cancelling a software
/// upgrade.
public struct Cosmos_Upgrade_V1beta1_CancelSoftwareUpgradeProposal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var title: String = String()

  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Upgrade_V1beta1_Plan: @unchecked Sendable {}
extension Cosmos_Upgrade_V1beta1_SoftwareUpgradeProposal: @unchecked Sendable {}
extension Cosmos_Upgrade_V1beta1_CancelSoftwareUpgradeProposal: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "cosmos.upgrade.v1beta1"

extension Cosmos_Upgrade_V1beta1_Plan: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Plan"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "time"),
    3: .same(proto: "height"),
    4: .same(proto: "info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._time) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.height) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.info) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try { if let v = self._time {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.height != 0 {
      try visitor.visitSingularInt64Field(value: self.height, fieldNumber: 3)
    }
    if !self.info.isEmpty {
      try visitor.visitSingularStringField(value: self.info, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Upgrade_V1beta1_Plan, rhs: Cosmos_Upgrade_V1beta1_Plan) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._time != rhs._time {return false}
    if lhs.height != rhs.height {return false}
    if lhs.info != rhs.info {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Upgrade_V1beta1_SoftwareUpgradeProposal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SoftwareUpgradeProposal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "description"),
    3: .same(proto: "plan"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._plan) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    try { if let v = self._plan {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Upgrade_V1beta1_SoftwareUpgradeProposal, rhs: Cosmos_Upgrade_V1beta1_SoftwareUpgradeProposal) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs._plan != rhs._plan {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Upgrade_V1beta1_CancelSoftwareUpgradeProposal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CancelSoftwareUpgradeProposal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Upgrade_V1beta1_CancelSoftwareUpgradeProposal, rhs: Cosmos_Upgrade_V1beta1_CancelSoftwareUpgradeProposal) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
