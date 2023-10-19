// swift-tools-version:5.9

import PackageDescription

let version = "1.81.2"
let moduleName = "Boost"
let checksum = "273e30fff15c66e65c7c9ec3bfe70bc3f029d69fd293a78652075fcb516c5bb4"

let package = Package(
    name: moduleName,
    platforms: [
      .macOS(.v11),
      .visionOS(.v1),
      .iOS(.v12),
      .tvOS(.v12),
      .watchOS(.v4)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/wabiverse/MetaverseBoostFramework/releases/download/\(version)/boost.xcframework.zip",
            checksum: checksum
        )
    ]
)
