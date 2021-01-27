// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Material Components iOS",
    platforms: [ .iOS(.v10) ],
    products: [
        .library(name: "MaterialComponents", targets: ["ActivityIndicator"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ActivityIndicator",
            dependencies: [
                .target(name: "Palettes")
            ]),
        .target(
            name: "Palettes",
            path: "components/Pallettes",
            sources: [
                "/src/*.{h,m}",
                "/src/private/*.{h,m}"
            ])
//        .testTarget(
//            name: "MyLibraryTests",
//            dependencies: ["MyLibrary"]),
    ]
)

