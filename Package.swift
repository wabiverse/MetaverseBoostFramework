// swift-tools-version:5.9

import PackageDescription

let version = "1.81.3"
let checksum = "05025cdac9f49ca8a30a2c9c56f30b85df98e338c12a0dc0ed8e7c8700f2a728"

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
