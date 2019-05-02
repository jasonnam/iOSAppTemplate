desc "Install certificates and provisioning profiles"
lane :install_certificates do
  keychain_name = "--Project Name--.keychain-db"
  keychain_file_path = File.expand_path("~/Library/Keychains/#{keychain_name}")

  if !File.file?(keychain_file_path)
    create_keychain(
      name: keychain_name,
      password: ENV["KEYCHAIN_PASSWORD"],
      unlock: true,
      timeout: false
    )
  end

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
