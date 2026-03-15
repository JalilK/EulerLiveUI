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
        ),
        .executable(
            name: "EulerLiveUIDemoApp",
            targets: ["EulerLiveUIDemoApp"]
        )
    ],
    targets: [
        .target(
            name: "EulerLiveUI",
            path: "Sources/EulerLiveUI"
        ),

        .executableTarget(
            name: "EulerLiveUIDemoApp",
            dependencies: ["EulerLiveUI"],
            path: "Examples/EulerLiveUIDemoApp"
        ),

        .testTarget(
            name: "EulerLiveUITests",
            dependencies: [
                "EulerLiveUI"
            ],
            path: "Tests/EulerLiveUITests"
        )
    ]
)
