// swift-tools-version: 5.7.1

import PackageDescription

let package = Package(
    name: "PenumbraiOSProtos",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "PenumbraiOSProtos",
            targets: ["PenumbraiOSProtos"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git",
                 from: "1.20.3"),
        .package(url: "https://github.com/grpc/grpc-swift.git",
                 from: "1.0.0"),
    ],
    targets: [
        .target(name: "PenumbraiOSProtos",
                dependencies: [
                    .product(name: "SwiftProtobuf",
                             package: "swift-protobuf"),
                    .product(name: "GRPC",
                             package: "grpc-swift"),
                ]),
        .testTarget(
            name: "PenumbraiOSProtosTests",
            dependencies: ["PenumbraiOSProtos"]),
    ]
)
