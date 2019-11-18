desc "Install certificates and provisioning profiles"
lane :install_certificates do
  keychain_name = "--PROJECT_NAME--.keychain-db"
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
    app_identifier: ["--BUNDLE_ID---Debug"],
    type: "development",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
  match(
    app_identifier: ["--BUNDLE_ID---AdHoc"],
    type: "adhoc",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
  match(
    app_identifier: ["--BUNDLE_ID--"],
    type: "appstore",
    keychain_name: keychain_name,
    keychain_password: keychain_password
  )
end
