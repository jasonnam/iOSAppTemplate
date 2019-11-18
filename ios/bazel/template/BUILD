load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application",
)
load(
    "@build_bazel_rules_apple//apple:versioning.bzl",
    "apple_bundle_version",
)

ios_application(
    name = "__PROJECT_NAME__",
    bundle_id = select({
        ":release": "--BUNDLE_ID--",
        ":adhoc": "--BUNDLE_ID---AdHoc",
        ":debug": "--BUNDLE_ID---Debug",
    }),
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        "InfoPlists/__PROJECT_NAME__-Info.plist",
    ],
    minimum_os_version = "12.0",
    provisioning_profile = select({
        ":release": "CodeSigning/__PROJECT_NAME__.mobileprovision",
        ":adhoc": "CodeSigning/__PROJECT_NAME__-AdHoc.mobileprovision",
        ":debug": "CodeSigning/__PROJECT_NAME__-Debug.mobileprovision",
    }),
    version = ":bundle_version",
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "//Sources/__PROJECT_NAME__",
    ],
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

config_setting(
    name = "release",
    define_values = {
        "configuration": "release",
    },
    visibility = [
        "//visibility:private",
    ],
)

config_setting(
    name = "adhoc",
    define_values = {
        "configuration": "adhoc",
    },
    visibility = [
        "//visibility:private",
    ],
)

config_setting(
    name = "debug",
    define_values = {
        "configuration": "debug",
    },
    visibility = [
        "//visibility:private",
    ],
)
