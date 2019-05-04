desc "Set version and build version"
lane :set_version_and_build_version do |options|
  version = options[:version]
  build_version = options[:build_version]

  unless version && build_version
    UI.crash! ':version and :build_version must be provided'
  end

  UI.message "Version: #{version}"
  UI.message "Build Version: #{build_version}"

  set_version(
    plist: "Sources/--Project Name--/Info-AdHoc.plist",
    version: version,
    build_version: build_version
  )
  set_version(
    plist: "Sources/--Project Name--/Info-Release.plist",
    version: version,
    build_version: build_version
  )
end
