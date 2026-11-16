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
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.4.1/KloudMateRum.xcframework.zip",
            checksum: "d5005c2cfdf939401cdecbfb576fbe82ab60fd050a9e522ced29553f37fbb48f"
        ),
    ]
)
