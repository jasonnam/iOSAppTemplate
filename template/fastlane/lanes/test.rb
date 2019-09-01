desc "Run unit tests and UI tests"
lane :test do
  scan(scheme: "--PROJECT_NAME-- AdHoc")
end
