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
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.3.1/KloudMateRum.xcframework.zip",
            checksum: "28617cbd8a6b2dec239a682bb84a20f731b8452d634dc6411f7c6b06290a6ffb"
        ),
    ]
)
