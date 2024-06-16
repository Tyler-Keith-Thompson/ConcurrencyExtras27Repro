// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConcurrencyExtras27Repro",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ConcurrencyExtras27Repro",
            targets: ["ConcurrencyExtras27Repro"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-concurrency-extras.git", from: "1.1.0"),
        .package(url: "https://github.com/apple/swift-testing.git", from: "0.10.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ConcurrencyExtras27Repro"),
        .testTarget(
            name: "ConcurrencyExtras27ReproTests",
            dependencies: [
                "ConcurrencyExtras27Repro",
                .product(name: "ConcurrencyExtras", package: "swift-concurrency-extras"),
                .product(name: "Testing", package: "swift-testing"),
            ]),
    ],
    swiftLanguageVersions: [.version("5.10"), .version("6")]
)
