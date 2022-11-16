# PenumbraiOS

- [penumbra](https://github.com/penumbra-zone/penumbra)
- [swift-protobuf](https://github.com/apple/swift-protobuf)
- [grpc-swift](https://github.com/grpc/grpc-swift/)

for swift protobuf,

install swift-proto
```
brew install swift-protobuf
```

in [penumbra/protos](https://github.com/penumbra-zone/penumbra/tree/main/proto), run
```
rm -rf swift-proto
mkdir swift-proto
protoc --proto_path=./proto --proto_path=./ibc-go-vendor --swift_out=Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types --swift_out=swift-proto ./proto/**/*.proto
```
