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
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.3.0/KloudMateRum.xcframework.zip",
            checksum: "efed4ca5f73520aae40aaf474e0d153fba70f2d238389455fbc01d9ca8a2b3d9"
        ),
    ]
)
