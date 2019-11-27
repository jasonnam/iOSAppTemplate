def xcode_build_settings(
        bundle_identifier = "",
        development_team = "",
        code_sign_identity = "",
        provisioning_profile_specifier = ""):
    return {
        "Debug": _xcode_build_settings(
            bundle_identifier = bundle_identifier,
            optimize = False,
            dsym = False,
            development_team = development_team,
            code_sign_identity = code_sign_identity,
            provisioning_profile_specifier = provisioning_profile_specifier,
        ),
        "Profile": _xcode_build_settings(
            bundle_identifier = bundle_identifier,
            optimize = True,
            dsym = True,
            development_team = development_team,
            code_sign_identity = code_sign_identity,
            provisioning_profile_specifier = provisioning_profile_specifier,
        )
    }

def _xcode_build_settings(
        bundle_identifier,
        optimize,
        dsym,
        development_team,
        code_sign_identity,
        provisioning_profile_specifier):
    return {
        "SDKROOT": "iphoneos",
        "TARGETED_DEVICE_FAMILY": "1,2",
        "PRODUCT_BUNDLE_IDENTIFIER": bundle_identifier,
        "SWIFT_COMPILATION_MODE": "wholemodule" if optimize else "singlefile",
        "SWIFT_OPTIMIZATION_LEVEL": "-O" if optimize else "-Onone",
        "DEBUG_INFORMATION_FORMAT": "dwarf-with-dsym" if dsym else "dwarf",
        "CODE_SIGN_STYLE": "Manual",
        "DEVELOPMENT_TEAM": development_team,
        "CODE_SIGN_IDENTITY": code_sign_identity,
        "PROVISIONING_PROFILE_SPECIFIER": provisioning_profile_specifier,
    }
