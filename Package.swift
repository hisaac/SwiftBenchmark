// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "SwiftBenchmark",
	platforms: [
		.macOS(.v15),
	],
	products: [
		.library(name: "SwiftBenchmark", targets: ["SwiftBenchmark"]),
	],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire", branch: "master"),
		.package(url: "https://github.com/firebase/firebase-ios-sdk", branch: "main"),
		.package(url: "https://github.com/Moya/Moya", branch: "master"),
		.package(url: "https://github.com/mxcl/PromiseKit", branch: "master"),
		.package(url: "https://github.com/onevcat/Kingfisher", branch: "master"),
		.package(url: "https://github.com/ReactiveX/RxSwift", branch: "main"),
		.package(url: "https://github.com/realm/realm-swift", branch: "master"),
		.package(url: "https://github.com/SnapKit/SnapKit", branch: "develop"),
		.package(url: "https://github.com/SwiftyJSON/SwiftyJSON", branch: "master"),
	],
	targets: [
		.target(
			name: "SwiftBenchmark",
			dependencies: [
				.product(name: "Alamofire", package: "Alamofire"),
				.product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
				.product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
				.product(name: "Moya", package: "Moya"),
				.product(name: "PromiseKit", package: "PromiseKit"),
				.product(name: "Kingfisher", package: "Kingfisher"),
				.product(name: "Realm", package: "realm-swift"),
				.product(name: "RxSwift", package: "RxSwift"),
				.product(name: "SnapKit", package: "SnapKit"),
				.product(name: "SwiftyJSON", package: "SwiftyJSON"),
			]
		),
	]
)
