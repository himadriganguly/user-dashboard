$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mobiler/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mobiler"
  s.version     = "0.0.1"
  s.authors     = ["VitalyP"]
  s.email       = ["ariekdev@gmail.com"]
  s.homepage    = "https://github.com/himadriganguly/user-dashboard"
  s.summary     = "Access to your mails from Mobile. Lightweight, Turbo speed, customizable."
  s.description = "Mobiler engine was especially developed for UseR_DashboarD"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.4"
  s.add_dependency "ruby-gmail"
  s.add_dependency "haml"
  s.add_dependency "mail"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
