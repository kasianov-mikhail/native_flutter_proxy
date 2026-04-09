// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "native_flutter_proxy",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "native-flutter-proxy", targets: ["native_flutter_proxy"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "native_flutter_proxy",
            dependencies: [],
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("Network", .when(platforms: [.iOS]))
            ]
        )
    ]
)
