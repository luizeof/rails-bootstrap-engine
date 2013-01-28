$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-bootstrap-engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-bootstrap-engine"
  s.version     = RailsBootstrapEngine::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsBootstrapEngine."
  s.description = "TODO: Description of RailsBootstrapEngine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "devise"
  s.add_dependency "devise-i18n"  
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
