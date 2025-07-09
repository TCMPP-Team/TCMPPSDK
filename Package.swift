// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TCMPPSDK",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TCMPPSDK",
            targets: ["TCMPPSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.9"),
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", .upToNextMinor(from: "2.4.3")),
        .package(url: "https://github.com/TCMPP-Team/Brotli.git", from: "1.1.0"),
        .package(url: "https://github.com/TCMPP-Team/PromiseObjC.git", from: "0.7.1"),
        .package(url: "https://github.com/TCMPP-Team/SocketRocket.git", from: "0.5.1"),
        .package(url: "https://github.com/TCMPP-Team/Tars.git", from: "1.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPSDK",
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPSDK/2.2.10/34/TCMPPSDK_2.2.10.xcframework.zip",
                        checksum: "a5501f3dbf6dc2f815b6893922158b24c8863426729913b0557f5b5572f05d8a"
        ),
        .target(
            name: "TCMPPSDKWrapper",
            dependencies: [
                "TCMPPSDK",
                .product(name: "MJRefresh", package: "MJRefresh"),
                .product(name: "ZipArchive", package: "ZipArchive"),
                .product(name: "Brotli", package: "Brotli"),
                .product(name: "PromiseObjC", package: "PromiseObjC"),
                .product(name: "SocketRocket", package: "SocketRocket"),
                .product(name: "Tars", package: "Tars"),
            ],
            resources: [.process("TMFMiniAppSDK.bundle")],
        )
    ]
)
