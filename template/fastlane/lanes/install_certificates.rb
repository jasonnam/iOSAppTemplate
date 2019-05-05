desc "Install certificates and provisioning profiles"
lane :install_certificates do
  keychain_name = "--Project Name--.keychain-db"
  keychain_password = ENV["MATCH_KEYCHAIN_PASSWORD"]
  keychain_file_path = File.expand_path("~/Library/Keychains/#{keychain_name}")

  if !File.file?(keychain_file_path)
    create_keychain(
      name: keychain_name,
      password: keychain_password,
      unlock: true,
      timeout: false
    )
  end

  match(
    app_identifier: ["--BundleID---Debug"],
    type: "development",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
  match(
    app_identifier: ["--BundleID---AdHoc"],
    type: "adhoc",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
  match(
    app_identifier: ["--BundleID--"],
    type: "appstore",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
end
