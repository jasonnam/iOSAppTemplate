desc "Release app on develop or release branches"
lane :release do
  if git_branch == "develop"
    version = "[develop] #{last_git_commit[:abbreviated_commit_hash]}"
  elsif git_branch.match(%r{release\/(\d|\.)+$}) && last_git_tag
    if matches = last_git_tag.match(%r{release\/((\d|\.)+)\/\d+$})
      version = matches.captures[0]
    elsif
      UI.message "Skip release on tag #{last_git_tag}"
      next
    end
  else
    UI.message "Skip release on branch #{git_branch}"
    next
  end
  build_version = Time.now.to_i

  UI.message "Version: #{version}"
  UI.message "Build Version: #{build_version}"

  set_version(
    plist: "Sources/--Project Name--/Info-AdHoc.plist",
    version: version,
    build_version: build_version
  )
  set_version(
    plist: "Sources/--Project Name--/Info-Release.plist",
    version: version,
    build_version: build_version
  )
end
