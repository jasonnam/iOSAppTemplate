fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
### install_certificates
```
fastlane install_certificates
```
Install certificates and provisioning profiles
### install_dependencies
```
fastlane install_dependencies
```
Install dependencies
### generate_code
```
fastlane generate_code
```
Generate code with SwiftGen and Sourcery
### copy_info_plists
```
fastlane copy_info_plists
```
Copy ad hoc and release info plists
### bootstrap
```
fastlane bootstrap
```
Install dependencies and prepare files
### test
```
fastlane test
```
Run unit tests and UI tests
### release
```
fastlane release
```
Release app on develop or release branches

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
