load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "__PROJECT_NAME__UITests",
    srcs = glob([
        "**/*.swift",
    ]),
    visibility = [
        "//Tests:__pkg__",
    ],
)
