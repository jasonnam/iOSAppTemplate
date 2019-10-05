load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application",
)

ios_application(
    name = "--PROJECT_NAME--",
    bundle_id = "--BUNDLE_ID--",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        "Info.plist",
    ],
    minimum_os_version = "12.0",
    version = ":bundle_version",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "//Sources/Main",
    ],
)

load(
    "@build_bazel_rules_apple//apple:versioning.bzl",
    "apple_bundle_version",
)

apple_bundle_version(
    name = "bundle_version",
    build_label_pattern = "version_{version}_build_version_{build_version}",
    build_version = "{build_version}",
    capture_groups = {
        "version": "\\d+.\\d+.\\d+",
        "build_version": "\\d+",
    },
    short_version_string = "{version}",
    visibility = [
        "//visibility:private",
    ],
)
