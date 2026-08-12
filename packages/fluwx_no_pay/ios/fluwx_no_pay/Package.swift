// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "fluwx_no_pay",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "fluwx-no-pay", targets: ["fluwx_no_pay"])
  ],
  dependencies: [
    .package(name: "FlutterFramework", path: "../FlutterFramework"),
    .package(
      name: "WechatOpenSDK-NoPay-SPM",
      path: "WechatOpenSDK-NoPay-SPM"
    ),
  ],
  targets: [
    .target(
      name: "fluwx_no_pay",
      dependencies: [
        .product(name: "FlutterFramework", package: "FlutterFramework"),
        .product(name: "WechatOpenSDK", package: "WechatOpenSDK-NoPay-SPM"),
      ],
      resources: [
        .process("Resources/PrivacyInfo.xcprivacy")
      ],
      cSettings: [
        .define("FLUWX_NO_PAY"),
        .headerSearchPath("include"),
      ],
      swiftSettings: [
        .define("FLUWX_NO_PAY")
      ],
      linkerSettings: [
        .linkedFramework("CoreGraphics"),
        .linkedFramework("Security"),
        .linkedFramework("WebKit"),
      ]
      // ⚠️ 无 -ObjC -all_load：没有静态 SDK 需要强制加载
    )
  ]
)
