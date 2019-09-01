desc "Copy ad hoc and release info plists"
lane :copy_info_plists do
  copy_files(
    source: "Sources/--PROJECT_NAME--/Info.plist",
    destination: "Sources/--PROJECT_NAME--/Info-AdHoc.plist"
  )
  copy_files(
    source: "Sources/--PROJECT_NAME--/Info.plist",
    destination: "Sources/--PROJECT_NAME--/Info-Release.plist"
  )
end
