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
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.3.2/KloudMateRum.xcframework.zip",
            checksum: "94422d45475073f60063cd7fc2f9f3431a58358ddf29038a9d0309ca1557f1ca"
        ),
    ]
)
