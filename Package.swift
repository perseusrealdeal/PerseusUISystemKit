// swift-tools-version:5.3
/* Package.swift

 Created by Mikhail Zhigulin in 7530.

 Copyright © 7530 - 7531 Mikhail Zhigulin of Novosibirsk.

 Licensed under the MIT license. See LICENSE file.
 All rights reserved.

 Abstract:
 Package manifest for Perseus UI System Kit.
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
            .branch("v1.1.0"))
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
