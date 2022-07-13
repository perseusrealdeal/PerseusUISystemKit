// swift-tools-version:5.3
/* Package.swift

 Created by Mikhail Zhigulin in 2022.

 Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
 All rights reserved.

 Abstract:
 Package manifest for Perseus UISystemKit.
*/

import PackageDescription

let package = Package(
    name: "PerseusUISystemKit",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "PerseusUISystemKit",
            targets: ["PerseusUISystemKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/perseusrealdeal/PerseusDarkMode.git",
            .branch("v1.0.3_test"))
    ],
    targets: [
        .target(
            name: "PerseusUISystemKit",
            dependencies: ["PerseusDarkMode"]
        ),
        .testTarget(
            name: "PerseusUISystemKitTests",
            dependencies: ["PerseusUISystemKit", "PerseusDarkMode"])
    ]
)
