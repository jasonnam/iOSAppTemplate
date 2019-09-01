desc "Install dependencies"
lane :install_dependencies do
  summonbin(command: "\"pod\" \"install\"")
end
