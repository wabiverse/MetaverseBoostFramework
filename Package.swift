// swift-tools-version:5.9

import PackageDescription

let version = "1.81.4"
let checksum = "2636f77d3ee22507da4484d7b5ab66645a08b196c0fca8a7af28d36c6948404e"

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
