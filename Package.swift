// swift-tools-version: 6.0
import PackageDescription
let package = Package(
    name: "LeanRuntime",
    platforms: [.macOS(.v15)],
    products: [
        .library(name: "LeanRuntime", targets: ["LeanRuntime"]),
        .library(name: "LeanExterns", targets: ["LeanExterns"]),
        .library(name: "LeanGenerated", targets: ["LeanGenerated"]),
    ],
    targets: [
        .target(name: "CGMP", path: "Sources/CGMP", publicHeadersPath: "include"),
        .target(name: "LeanRuntime", dependencies: ["CGMP"]),
        .target(name: "LeanExterns", dependencies: ["LeanRuntime"]),
        .target(name: "LeanGenerated", dependencies: ["LeanRuntime", "LeanExterns"]),
        .target(name: "LeanTransformTests", dependencies: ["LeanRuntime", "LeanExterns", "LeanGenerated"]),
        .testTarget(name: "LeanRuntimeTests", dependencies: ["LeanRuntime", "LeanExterns", "LeanGenerated", "LeanTransformTests"]),
    ]
)
