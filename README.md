# PenumbraiOS

- [penumbra](https://github.com/penumbra-zone/penumbra)
- [swift-protobuf](https://github.com/apple/swift-protobuf)
- [grpc-swift](https://github.com/grpc/grpc-swift/)
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

in the project directory, run

```
./start
```

## getting started

### [XcodeGen](https://github.com/yonaskolb/XcodeGen)

Using [XcodeGen](https://github.com/yonaskolb/XcodeGen), we'll generate swift projects and frameworks on demand. Easily share code, generate schemes for different environments, share build settings across multiple targets, and so more via the `project.yml` config file.

```
brew install xcodegen
```

in the projects directory,

```
xcodegen generate
```

then open the project via

```
open PenumbraiOS.xcodeproj
```

which is pretty much the bash executable `start`. run this after `project.yml` config changes

```
./start
```

### [swiftlint](https://github.com/realm/SwiftLint)

```
brew install swiftlint
```

### [swift-protobuf](https://github.com/apple/swift-protobuf)

```
brew install swift-protobuf
```

in [penumbra/protos](https://github.com/penumbra-zone/penumbra/tree/main/proto), run

```
brew install swift-protobuf
rm -rf swift_proto
mkdir swift_proto
protoc --swift_out=swift_proto --proto_path=./proto --proto_path=./ibc-go-vendor --swift_opt=FileNaming=PathToUnderscores --swift_opt=Visibility=public -Iproto/ $(find . -type f \( -name "*.proto" \))
rm -f swift_proto/google_protobuf_any.pb.swift
```
