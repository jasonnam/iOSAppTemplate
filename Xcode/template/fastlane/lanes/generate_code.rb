desc "Generate code with Sourcery"
lane :generate_code do
  summonbin(command: "sourcery --config \"Sourcery/--PROJECT_NAME--\"")
  summonbin(command: "sourcery --config \"Sourcery/--PROJECT_NAME--Tests\"")
end
