desc "Release beta"
lane :release_beta do
  remove_files("build/beta")

  gym(
    scheme: "--Project Name-- AdHoc",
    export_method: "ad-hoc",
    export_options: {
      compileBitcode: false
    },
    output_directory: "build/beta"
  )
end
