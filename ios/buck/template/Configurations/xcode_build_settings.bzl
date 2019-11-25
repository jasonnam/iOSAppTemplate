def xcode_build_settings(
        bundle_id_debug,
        bundle_id_release,
        deployment_target,
        development_team,
        code_sign_identity_debug,
        code_sign_identity_release,
        provisioning_profile_specifier_debug,
        provisioning_profile_specifier_release):
    return {
        "Debug": _xcode_build_settings(
            bundle_id = bundle_id_debug,
            deployment_target = deployment_target,
            optimize = False,
            dsym = False,
            development_team = development_team,
            code_sign_identity = code_sign_identity_debug,
            provisioning_profile_specifier = provisioning_profile_specifier_debug,
        ),
        "Profile": _xcode_build_settings(
            bundle_id = bundle_id_debug,
            deployment_target = deployment_target,
            optimize = True,
            dsym = True,
            development_team = development_team,
            code_sign_identity = code_sign_identity_debug,
            provisioning_profile_specifier = provisioning_profile_specifier_debug,
        ),
        "Release": _xcode_build_settings(
            bundle_id = bundle_id_release,
            deployment_target = deployment_target,
            optimize = True,
            dsym = True,
            development_team = development_team,
            code_sign_identity = code_sign_identity_release,
            provisioning_profile_specifier = provisioning_profile_specifier_release,
        ),
    }

def _xcode_build_settings(
        bundle_id,
        deployment_target,
        optimize,
        dsym,
        development_team,
        code_sign_identity,
        provisioning_profile_specifier):
    return {
        "SDKROOT": "iphoneos",
        "TARGETED_DEVICE_FAMILY": "1,2",
        "PRODUCT_BUNDLE_IDENTIFIER": bundle_id,
        "IPHONEOS_DEPLOYMENT_TARGET": deployment_target,
        "SWIFT_COMPILATION_MODE": "wholemodule" if optimize else "singlefile",
        "SWIFT_OPTIMIZATION_LEVEL": "-O" if optimize else "-Onone",
        "DEBUG_INFORMATION_FORMAT": "dwarf-with-dsym" if dsym else "dwarf",
        "CODE_SIGN_STYLE": "Manual",
        "DEVELOPMENT_TEAM": development_team,
        "CODE_SIGN_IDENTITY": code_sign_identity,
        "PROVISIONING_PROFILE_SPECIFIER": provisioning_profile_specifier,
    }
