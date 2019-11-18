desc "Release beta"
lane :release_beta do
  remove_files(path: "build/beta")

  gym(
    scheme: "--PROJECT_NAME-- AdHoc",
    export_method: "ad-hoc",
    export_options: {
      compileBitcode: false
    },
    output_directory: "build/beta"
  )
end
