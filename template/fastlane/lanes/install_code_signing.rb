desc "Sync certificates and profiles"
lane :install_code_signing do
  match(
    app_identifier: ["--BundleID---Debug"],
    type: "development",
    readonly: true
  )
  match(
    app_identifier: ["--BundleID---AdHoc"],
    type: "adhoc",
    readonly: true
  )
  match(
    app_identifier: ["--BundleID--"],
    type: "appstore",
    readonly: true
  )
end
