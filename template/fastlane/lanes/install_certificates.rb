desc "Install certificates and provisioning profiles"
lane :install_certificates do
  create_keychain(
    name: "--Project Name--.keychain-db",
    password: ENV["KEYCHAIN_PASSWORD"]
  )
  match(
    app_identifier: ["--BundleID---Debug"],
    type: "development"
  )
  match(
    app_identifier: ["--BundleID---AdHoc"],
    type: "adhoc"
  )
  match(
    app_identifier: ["--BundleID--"],
    type: "appstore"
  )
end