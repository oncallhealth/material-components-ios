// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Material Components iOS",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MaterialComponents", targets: ["MaterialTextFields"]),
    ],
    dependencies:[
        .package(url:"https://github.com/grupopulpo/material-text-accessibility-ios", from: "2.0.0"),
        .package(url: "https://github.com/oncallhealth/material-internationalization-ios", from: "2.2.0")
    ],
    targets: [
        .target(name: "MaterialTextFields",
                dependencies: [
                    .target(name: "AnimationTiming"),
                    .target(name: "Buttons"),
                    .target(name: "Elevation"),
                    .target(name: "Palettes"),
                    .target(name: "Typography"),
                    .target(name: "Math"),
                    "MDFInternationalization"
                ],
                path: "components/TextFields/src",
                exclude: [
                    "ColorThemer",
                    "Theming",
                    "private/MDCTextField+Testing.h"
                ]),
        .target(
            name: "Buttons",
            dependencies: [
                "MDFInternationalization",
                "MDFTextAccessibility",
                .target(name: "Elevation"),
                .target(name: "Ink"),
                .target(name: "Ripple"),
                .target(name: "ShadowElevations"),
                .target(name: "ShadowLayer"),
                .target(name: "ShapeLibrary"),
                .target(name: "Shapes"),
                .target(name: "Typography"),
                .target(name: "Math")
            ],
            path: "components/Buttons/src",
            exclude: [
                "ButtonThemer",
                "ColorThemer",
                "ShapeThemer",
                "Theming",
                "TitleColorAccessibilityMutator",
                "TypographyThemer"
            ],
            publicHeadersPath: "."),
        
        
        // Sub-components
        .target(
            name: "Palettes",
            path: "components/Palettes/src",
            publicHeadersPath: "."),
        .target(
            name: "Application",
            path: "components/private/Application/src",
            publicHeadersPath: "."),
        .target(
            name: "AnimationTiming",
            path: "components/AnimationTiming/src",
            publicHeadersPath: "."),
        .target(
            name: "Availability",
            path: "components/Availability/src",
            publicHeadersPath: "."),
        .target(
            name: "Color",
            path: "components/schemes/Color/src",
            publicHeadersPath: "."),
        .target(
            name: "Math",
            path: "components/private/Math/src",
            publicHeadersPath: "."),
        .target(
            name: "Elevation",
            dependencies: [
                .target(name: "Availability"),
                .target(name: "Color"),
                .target(name: "Math")
            ],
            path: "components/Elevation/src",
            publicHeadersPath: "."),
        .target(
            name: "Ink",
            dependencies: [
                .target(name: "Availability"),
                .target(name: "Color"),
                .target(name: "Math")
            ],
            path: "components/Ink/src",
            publicHeadersPath: "."),
        .target(
            name: "Ripple",
            dependencies: [
                .target(name: "AnimationTiming"),
                .target(name: "Availability"),
                .target(name: "Color"),
                .target(name: "Math")
            ],
            path: "components/Ripple/src",
            publicHeadersPath: "."),
        .target(
            name: "ShadowElevations",
            path: "components/ShadowElevations/src",
            publicHeadersPath: "."),
        .target(
            name: "ShadowLayer",
            dependencies: [
                .target(name: "ShadowElevations")
            ],
            path: "components/ShadowLayer/src",
            publicHeadersPath: "."),
        .target(
            name: "ShapeLibrary",
            dependencies: [
                .target(name: "Shapes"),
                .target(name: "Math")
            ],
            path: "components/ShapeLibrary/src",
            publicHeadersPath: "."),
        .target(
            name: "Shapes",
            dependencies: [
                .target(name: "ShadowLayer"),
                .target(name: "Color"),
                .target(name: "Math")
            ],
            path: "components/Shapes/src",
            publicHeadersPath: "."),
        .target(
            name: "Typography",
            dependencies: [
                .target(name: "Application"),
                .target(name: "Math"),
                "MDFTextAccessibility"
            ],
            path: "components/Typography/src",
            publicHeadersPath: ".")
    ]
)
