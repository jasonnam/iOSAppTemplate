desc "Generate code with SwiftGen and Sourcery"
lane :generate_code do
  summonbin(command: "swiftgen")
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--\"")
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--Tests\"")
end
