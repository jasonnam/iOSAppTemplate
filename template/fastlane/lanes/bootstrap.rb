import 'lanes/install_code_signing.rb'

desc "Install dependencies"
lane :bootstrap do
  # install_code_signing
  summonbin(command: "\"pod\" \"install\"")
  summonbin(command: "carthage bootstrap --platform ios --cache-builds")
end
