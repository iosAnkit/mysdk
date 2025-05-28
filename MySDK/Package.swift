// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [
        .iOS(.v13) // or higher
    ],
    products: [
        .library(name: "MySDKCore", targets: ["MySDKCore"]),
        .library(name: "MySDKAuth", targets: ["MySDKAuth"]),
        .library(name: "MySDKUI", targets: ["MySDKUI"]),
    ],
    targets: [
        .target(name: "MySDKCore", dependencies: []),
        .target(name: "MySDKAuth", dependencies: ["MySDKCore"]),
        .target(
            name: "MySDKUI",
            dependencies: ["MySDKCore"],
            resources: [
                // Add resources if you have any (e.g., xibs, images)
                // .process("Resources")
            ]
        )
    ]
)
