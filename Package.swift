// swift-tools-version:5.9

import PackageDescription

let version = "1.81.2"
let checksum = "a4846beef0b8f335a0fd0de5711aec07674e9c804c066e0090d864a31b99e9de"

let package = Package(
    name: "Boost",
    platforms: [
      .macOS(.v11),
      .visionOS(.v1),
      .iOS(.v12),
      .tvOS(.v12),
      .watchOS(.v4)
    ],
    products: [
        .library(
            name: "Boost",
            targets: ["Boost"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Boost",
            url: "https://github.com/wabiverse/MetaverseBoostFramework/releases/download/\(version)/boost.xcframework.zip",
            checksum: checksum
        )
    ]
)
