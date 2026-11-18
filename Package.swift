// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SmadexAppLovinAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SmadexAppLovinAdapter", targets: ["SmadexAppLovinAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/smadex/smadex-ios-sdk-spm.git", exact: "0.10.3"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.7.0")
    ],
    targets: [
        .target(
            name: "SmadexAppLovinAdapterTarget",
            dependencies: [
                .target(name: "Smadex_AppLovin"),
                .product(name: "SmadexSDK", package: "smadex-ios-sdk-spm"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Smadex_AppLovin",
            url: "https://downloads.smadex.com/public/Smadex-AppLovin-13.7.1.xcframework.zip",
            checksum: "8bfd4e5bad1ee27e2a363104fa4b19c855f7a1c3afa7b1fb5432827b468c3c07"
        )
    ]
)
