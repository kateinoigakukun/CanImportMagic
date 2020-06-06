// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Example",
    dependencies: [
        .package(path: "./Packages/LibraryX"),
        .package(path: "./Packages/BasicA"),
    ],
    targets: [
        .target(
            name: "Example",
            dependencies: ["LibraryX", "BasicA"]),
        .testTarget(
            name: "ExampleTests",
            dependencies: ["Example"]),
    ]
)
