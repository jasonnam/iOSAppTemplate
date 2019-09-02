load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_ui_test",
)

ios_ui_test(
    name = "--PROJECT_NAME--UITests",
    minimum_os_version = "12.0",
    test_host = "//Sources:--PROJECT_NAME--",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "UITests",
    ],
)

load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "UITests",
    srcs = glob([
        "**/*.swift",
    ]),
    visibility = [
        "//visibility:private",
    ],
)
