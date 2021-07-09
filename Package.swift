// swift-tools-version:5.4
import PackageDescription

//@f:0
let package = Package(
    name: "SourceKittenFramework",
    products: [
        .library(name: "SourceKittenFramework", targets: ["SourceKittenFramework"])
    ],
    dependencies: [
        .package(name: "SWXMLHash", url: "https://github.com/drmohundro/SWXMLHash.git", .upToNextMinor(from: "5.0.1")),
        .package(name: "Yams", url: "https://github.com/jpsim/Yams.git", .upToNextMajor(from: "4.0.1")),
    ],
    targets: [
        .target(name: "Clang_C"),
        .target(name: "SourceKit"),
        .target(name: "SourceKittenFramework", dependencies: [ "Clang_C", "SourceKit", "SWXMLHash", "Yams", ]),
        .testTarget(name: "SourceKittenFrameworkTests", dependencies: [ "SourceKittenFramework" ], exclude: [ "Fixtures", ])
    ]
)
