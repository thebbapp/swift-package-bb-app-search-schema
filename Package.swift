// swift-tools-version: 6.2.0
import PackageDescription

let package = Package(
    name: "BbAppSearchSchema",
    defaultLocalization: "en",
    platforms: [.iOS("18.5"), .macOS("15.5"), .tvOS("18.0")],
    products: [.library(name: "BbAppSearchSchema", targets: ["BbAppSearchSchema"])],
    dependencies: [
        .package(
            url: "https://github.com/thebbapp/swift-package-bb-app-content-schema.git",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/thebbapp/swift-package-bb-app-author-schema.git",
            from: "0.1.0"
        ),
        .package(url: "https://github.com/thebbapp/swift-package-bb-app-intent.git", from: "0.1.0"),
        .package(url: "https://github.com/thebbapp/swift-package-bb-app-task.git", from: "0.1.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BbAppSearchSchema",
            url:
                "https://github.com/thebbapp/swift-package-bb-app-search-schema/releases/download/v0.1.0/BbAppSearchSchema.xcframework.zip",
            checksum: "f3b432ee616ec4998116d73421bfc6afe1d10aa7d4666bbad2b0072818faac4d"
        )
    ],
    swiftLanguageModes: [.v6]
)
