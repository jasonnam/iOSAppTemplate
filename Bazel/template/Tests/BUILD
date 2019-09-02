load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_unit_test",
)

ios_unit_test(
    name = "--PROJECT_NAME--Tests",
    minimum_os_version = "12.0",
    test_host = "//Sources:--PROJECT_NAME--",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "//Tests/MainTests",
    ],
)
