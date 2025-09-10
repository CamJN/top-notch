// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "top-notch",
    platforms: [
        .macOS(.v12) // minimum version
    ],
    targets: [
        .executableTarget(
            name: "top-notch",
            path: "Sources"
        ),
    ]
)
