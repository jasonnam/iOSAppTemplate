load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "__PROJECT_NAME__",
    srcs = glob([
        "AppDelegate/*.swift",
    ]),
    visibility = [
        "//:__pkg__",
    ],
)
