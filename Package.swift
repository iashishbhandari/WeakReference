// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "WeakReference",
    products: [
        .library(
            name: "WeakReference",
            targets: ["WeakReference"]),
    ],
    targets: [
        .target(
            name: "WeakReference",
            dependencies: []),
        .testTarget(
            name: "WeakReferenceTests",
            dependencies: ["WeakReference"]),
    ]
)
