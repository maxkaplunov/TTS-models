import PackageDescription


let package = Package(
    name: "TTSModels",
    platforms: [
        .iOS(.v15) // Specify minimum iOS version here
    ],
    products: [
        .library(
            name: "TTSModels",
            targets: ["TTSModels"]),
    ],
    targets: [
        .target(
            name: "TTSModels",
            resources: [
                .process("Resources/vits-vctk/lexicon.txt"),
                .process("Resources/vits-vctk/tokens.txt"),
                .process("Resources/vits-vctk/vits-vctk.onnx")
            ]
        ),
    ]
)
