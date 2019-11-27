load(
    "//Configurations:project_configuration.bzl",
    "project_configuration",
)

configuration = project_configuration()

def swift_compiler_flags():
    swift_compiler_flags = []

    if configuration == "debug":
        swift_compiler_flags.append("-enable-testing")

    return swift_compiler_flags
