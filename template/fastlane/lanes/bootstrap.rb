import "lanes/install_certificates.rb"

desc "Install dependencies"
lane :bootstrap do
  # install_certificates
  summonbin(command: "\"pod\" \"install\"")
  summonbin(command: "carthage bootstrap --platform ios --cache-builds")
  summonbin(command: "swiftgen")
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--\"")
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--Tests\"")
end
