// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "plexample",
	products: [
		.library(
			name: "plexample",
			targets: ["plexample"]
		),
	],
	targets: [
		.binaryTarget(
			name: "plexample",
			path: "Frameworks/plexample.xcframework"
		)
	]
)