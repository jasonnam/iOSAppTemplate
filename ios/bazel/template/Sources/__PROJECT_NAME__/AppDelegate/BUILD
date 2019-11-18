load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "AppDelegate",
    srcs = glob([
        "*.swift",
    ]),
    visibility = [
        "//Sources/__PROJECT_NAME__:__pkg__",
    ],
    deps = [
        "@AppDelegate",
    ],
)
