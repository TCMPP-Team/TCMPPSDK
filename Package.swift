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
        .package(url: "https://github.com/TCMPP-Team/Brotli.git", branch: "master"),
        .package(url: "https://github.com/TCMPP-Team/MQQComponents.git", branch: "main"),
        .package(url: "https://github.com/TCMPP-Team/PromiseObjC.git", branch: "main"),
        .package(url: "https://github.com/TCMPP-Team/SocketRocket.git", branch: "master"),
        .package(url: "https://github.com/TCMPP-Team/Tars.git", branch: "main"),
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPSDK",
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPSDK/2.2.10/4/TCMPPSDK_2.2.10.xcframework.zip",
                        checksum: "b455f04d58bf4637e7ec18a77e8e9bc9ab3f1da758ff8beee77a51f3195d55d3"
        ),
        .target(
            name: "TCMPPSDKWrapper",
            dependencies: [
                "TCMPPSDK",
                .product(name: "MJRefresh", package: "MJRefresh"),
                .product(name: "ZipArchive", package: "ZipArchive"),
                .product(name: "Brotli", package: "Brotli"),
                .product(name: "MQQComponents", package: "MQQComponents"),
                .product(name: "PromiseObjC", package: "PromiseObjC"),
                .product(name: "SocketRocket", package: "SocketRocket"),
                .product(name: "Tars", package: "Tars"),
            ],
            resources: [.process("TMFMiniAppSDK.bundle")],
            linkerSettings: [
                .unsafeFlags(["-ObjC"])
            ]

        )
    ]
)
