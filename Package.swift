// swift-tools-version: 5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalyticsWrapper",
    products: [
        .library(
            name: "AnalyticsWrapper",
            targets: ["AnalyticsWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "AnalyticsWrapper",
            dependencies: []
        ),
        .testTarget(
            name: "AnalyticsWrapperTests",
            dependencies: ["AnalyticsWrapper"]
        ),
    ]
)
