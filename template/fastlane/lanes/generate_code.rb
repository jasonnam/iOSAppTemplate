desc "Generate code with Sourcery"
lane :generate_code do
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--\"")
  summonbin(command: "sourcery --config \"Sourcery/--Project Name--Tests\"")
end
