// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHUIKitCore",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "PHUIKitCore", targets: ["PHUIKitCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/panghu-lee/PHFoundation.git", .branch("master")),
    ],
    targets: [
        .target(name: "PHUIKitCore", dependencies: ["PHFoundation"], path: "Sources")
    ]
)
