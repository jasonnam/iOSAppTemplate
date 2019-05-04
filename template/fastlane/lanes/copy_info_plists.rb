desc "Copy ad hoc and release info plists"
lane :copy_info_plists do
  copy(
    source: "Sources/--Project Name--/Info.plist",
    destination: "Sources/--Project Name--/Info-AdHoc.plist"
  )
  copy(
    source: "Sources/--Project Name--/Info.plist",
    destination: "Sources/--Project Name--/Info-Release.plist"
  )
end