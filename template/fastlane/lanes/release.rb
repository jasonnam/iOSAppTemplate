import "lanes/set_version_and_build_version.rb"
import "lanes/release_beta.rb"
import "lanes/release_app_store.rb"

desc "Release app on develop or release branches"
lane :release do
  build_version = Time.now.to_i
  if git_branch == "develop"
    version = "[develop] #{last_git_commit[:abbreviated_commit_hash]}"
    set_version_and_build_version(version: version, build_version: build_version)
    release_beta
  elsif git_branch.match(%r{release\/(\d|\.)+$}) && last_git_tag
    if matches = last_git_tag.match(%r{release\/((\d|\.)+)\/\d+$})
      version = matches.captures[0]
      set_version_and_build_version(version: version, build_version: build_version)
      release_beta
      release_app_store
    elsif
      UI.message "Skip release on tag #{last_git_tag}"
      next
    end
  else
    UI.message "Skip release on branch #{git_branch}"
    next
  end
end
