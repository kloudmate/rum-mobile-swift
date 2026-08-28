// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "KloudMateRum",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "KloudMateRum", targets: ["KloudMateRum"]),
    ],
    targets: [
        .binaryTarget(
            name: "KloudMateRum",
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.4.0/KloudMateRum.xcframework.zip",
            checksum: "719ddf7b65f23c3028e5642373b2aa5ceaddb3cbe45aaa18ebe04498d6752442"
        ),
    ]
)
