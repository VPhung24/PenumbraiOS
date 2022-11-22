#!/bin/bash -ex

echo "hello"
#cd ${SRCROOT}/..
#rm -rf penumbra && rm -rf tools/swift_proto
#git clone https://github.com/penumbra-zone/penumbra.git
#cd penumbra/proto/
#brew install swift-protobuf
#rm -rf swift_proto
#mkdir swift_proto
#protoc --swift_out=swift_proto --proto_path=./proto --proto_path=./ibc-go-vendor --swift_opt=FileNaming=PathToUnderscores --swift_opt=Visibility=public -Iproto/ $(find . -type f \( -name "*.proto" \))
#rm -f swift_proto/google_protobuf_any.pb.swift
#mv swift_proto/ ${SRCROOT}/../tools
