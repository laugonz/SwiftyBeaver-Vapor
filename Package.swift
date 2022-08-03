// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftyBeaverVapor",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "SwiftyBeaverVapor", targets: ["SwiftyBeaverVapor"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMajor(from: "1.9.0"))
    ],
    targets: [
        .target(name: "SwiftyBeaverVapor", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "SwiftyBeaver", package: "SwiftyBeaver")
        ])
    ]
)
