load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_ui_test",
    "ios_unit_test",
)

ios_unit_test(
    name = "__PROJECT_NAME__Tests",
    minimum_os_version = "12.0",
    test_host = "//:__PROJECT_NAME__",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "//Tests/__PROJECT_NAME__Tests",
    ],
)

ios_ui_test(
    name = "__PROJECT_NAME__UITests",
    minimum_os_version = "12.0",
    test_host = "//:__PROJECT_NAME__",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "//Tests/__PROJECT_NAME__UITests",
    ],
)
