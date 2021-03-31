// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Bezeler",
    platforms: [
        .iOS(.v14), .macOS(.v11), .tvOS(.v14)
    ],
    products: [
        .library(name: "Bezeler", targets: ["Bezeler"])
    ],
    targets: [
        .target(
            name: "Bezeler",
            dependencies: [],
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
                .define("RELEASE", .when(configuration: .release)),
                .define("SWIFT_PACKAGE")
            ]),
        .testTarget(name: "BezelerTests", dependencies: ["Bezeler"]),
    ]
)
