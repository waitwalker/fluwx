// swift-tools-version: 5.7
import PackageDescription

let package = Package(
  name: "WechatOpenSDK-NoPay",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "WechatOpenSDK",
      targets: ["WechatOpenSDK"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "WechatOpenSDK",
      path: "WechatOpenSDK-NoPay-Dynamic.xcframework"
    )
  ]
)
