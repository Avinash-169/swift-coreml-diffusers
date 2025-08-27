// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-coreml-diffusers",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "swift-coreml-diffusers",
            targets: ["swift-coreml-diffusers"]
        ),
    ],
    dependencies: [
        // You can add other dependencies here if needed later
        // Example: .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "swift-coreml-diffusers",
            path: "Sources",
            exclude: [
                "Examples", "Assets"
            ],
            resources: [
                // If you want to bundle models or resources inside the package
                // .process("Resources")
            ]
        ),
        .testTarget(
            name: "swift-coreml-diffusersTests",
            dependencies: ["swift-coreml-diffusers"],
            path: "Tests"
        )
    ]
)
