// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TableViewWrapper",
    products: [
        .library(
            name: "TableViewWrapper",
            targets: ["TableViewWrapper"]),
    ],
    targets: [
        .target(
            name: "TableViewWrapper",
            dependencies: []),
        .testTarget(
            name: "TableViewWrapperTests",
            dependencies: ["TableViewWrapper"]),
    ]
)
