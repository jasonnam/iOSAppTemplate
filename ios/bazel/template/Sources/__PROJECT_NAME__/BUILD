load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "__PROJECT_NAME__",
    visibility = [
        "//:__pkg__",
        "//Tests/__PROJECT_NAME__Tests:__pkg__",
    ],
    deps = [
        "//Sources/__PROJECT_NAME__/AppDelegate",
    ],
)
