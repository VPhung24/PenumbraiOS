// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/core/channel/v1/genesis.proto
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

/// GenesisState defines the ibc channel submodule's genesis state.
public struct Ibc_Core_Channel_V1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var channels: [Ibc_Core_Channel_V1_IdentifiedChannel] = []

  public var acknowledgements: [Ibc_Core_Channel_V1_PacketState] = []

  public var commitments: [Ibc_Core_Channel_V1_PacketState] = []

  public var receipts: [Ibc_Core_Channel_V1_PacketState] = []

  public var sendSequences: [Ibc_Core_Channel_V1_PacketSequence] = []

  public var recvSequences: [Ibc_Core_Channel_V1_PacketSequence] = []

  public var ackSequences: [Ibc_Core_Channel_V1_PacketSequence] = []

  /// the sequence for the next generated channel identifier
  public var nextChannelSequence: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// PacketSequence defines the genesis type necessary to retrieve and store
/// next send and receive sequences.
public struct Ibc_Core_Channel_V1_PacketSequence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var portID: String = String()

  public var channelID: String = String()

  public var sequence: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Ibc_Core_Channel_V1_GenesisState: @unchecked Sendable {}
extension Ibc_Core_Channel_V1_PacketSequence: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "ibc.core.channel.v1"

extension Ibc_Core_Channel_V1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "channels"),
    2: .same(proto: "acknowledgements"),
    3: .same(proto: "commitments"),
    4: .same(proto: "receipts"),
    5: .standard(proto: "send_sequences"),
    6: .standard(proto: "recv_sequences"),
    7: .standard(proto: "ack_sequences"),
    8: .standard(proto: "next_channel_sequence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.channels) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.acknowledgements) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.commitments) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.receipts) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.sendSequences) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.recvSequences) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.ackSequences) }()
      case 8: try { try decoder.decodeSingularUInt64Field(value: &self.nextChannelSequence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channels.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.channels, fieldNumber: 1)
    }
    if !self.acknowledgements.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.acknowledgements, fieldNumber: 2)
    }
    if !self.commitments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.commitments, fieldNumber: 3)
    }
    if !self.receipts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.receipts, fieldNumber: 4)
    }
    if !self.sendSequences.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sendSequences, fieldNumber: 5)
    }
    if !self.recvSequences.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.recvSequences, fieldNumber: 6)
    }
    if !self.ackSequences.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ackSequences, fieldNumber: 7)
    }
    if self.nextChannelSequence != 0 {
      try visitor.visitSingularUInt64Field(value: self.nextChannelSequence, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Channel_V1_GenesisState, rhs: Ibc_Core_Channel_V1_GenesisState) -> Bool {
    if lhs.channels != rhs.channels {return false}
    if lhs.acknowledgements != rhs.acknowledgements {return false}
    if lhs.commitments != rhs.commitments {return false}
    if lhs.receipts != rhs.receipts {return false}
    if lhs.sendSequences != rhs.sendSequences {return false}
    if lhs.recvSequences != rhs.recvSequences {return false}
    if lhs.ackSequences != rhs.ackSequences {return false}
    if lhs.nextChannelSequence != rhs.nextChannelSequence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Channel_V1_PacketSequence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PacketSequence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "port_id"),
    2: .standard(proto: "channel_id"),
    3: .same(proto: "sequence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.portID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.sequence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.portID.isEmpty {
      try visitor.visitSingularStringField(value: self.portID, fieldNumber: 1)
    }
    if !self.channelID.isEmpty {
      try visitor.visitSingularStringField(value: self.channelID, fieldNumber: 2)
    }
    if self.sequence != 0 {
      try visitor.visitSingularUInt64Field(value: self.sequence, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Channel_V1_PacketSequence, rhs: Ibc_Core_Channel_V1_PacketSequence) -> Bool {
    if lhs.portID != rhs.portID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.sequence != rhs.sequence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}