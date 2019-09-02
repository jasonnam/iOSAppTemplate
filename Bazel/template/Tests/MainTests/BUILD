load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "MainTests",
    srcs = glob([
        "**/*.swift",
    ]),
    visibility = [
        "//Tests:__pkg__",
    ],
    deps = [
        "//Sources/Main",
    ],
)
