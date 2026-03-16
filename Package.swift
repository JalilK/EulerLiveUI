// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "EulerLiveUI",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "EulerLiveUI",
            targets: ["EulerLiveUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-testing.git", exact: "0.7.0")
    ],
    targets: [
        .target(
            name: "EulerLiveUI",
            path: "Sources/EulerLiveUI"
        ),
        .testTarget(
            name: "EulerLiveUITests",
            dependencies: [
                "EulerLiveUI",
                .product(name: "Testing", package: "swift-testing")
            ],
            path: "Tests/EulerLiveUITests"
        )
    ]
)
