load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "Main",
    srcs = glob([
        "**/*.swift",
    ]),
    visibility = [
        "//Sources:__pkg__",
        "//Tests/MainTests:__pkg__",
    ],
    deps = [
        "@AppDelegate",
    ],
)
