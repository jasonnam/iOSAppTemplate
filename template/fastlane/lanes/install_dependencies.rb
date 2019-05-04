desc "Install dependencies"
lane :install_dependencies do
  summonbin(command: "\"pod\" \"install\"")
  summonbin(command: "carthage bootstrap --platform ios --cache-builds")
end
