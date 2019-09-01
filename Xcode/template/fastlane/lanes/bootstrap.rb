import "lanes/install_certificates.rb"
import "lanes/install_dependencies.rb"
import "lanes/generate_code.rb"
import "lanes/copy_info_plists.rb"

desc "Install dependencies and prepare files"
lane :bootstrap do
  # install_certificates
  install_dependencies
  generate_code
  copy_info_plists
end
