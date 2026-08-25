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
            url: "https://github.com/kloudmate/rum-mobile-swift/releases/download/0.3.3/KloudMateRum.xcframework.zip",
            checksum: "18167ea8182962ac081243175c98a69b47bea317ab963a402821de32ac429e65"
        ),
    ]
)
