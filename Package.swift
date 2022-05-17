// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AwesomeUIMagic",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "AwesomeUIMagic",
            targets: ["AwesomeUIMagic"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AwesomeUIMagic",
            dependencies: []),
        .testTarget(
            name: "AwesomeUIMagicTests",
            dependencies: ["AwesomeUIMagic"]),
    ],
    swiftLanguageVersions: [.v4_2]
)
