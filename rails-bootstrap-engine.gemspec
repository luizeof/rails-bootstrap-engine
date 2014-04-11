$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-bootstrap-engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-bootstrap-engine"
  s.version     = RailsBootstrapEngine::VERSION
  s.authors     = ["Luiz Eduardo de Oliveira Fonseca", "Agencia Orangeweb"]
  s.email       = ["luizeof@gmail.com", "atendimento@orangeweb.com.br"]
  s.homepage    = "https://github.com/orangeweb/rails-bootstrap-engine"
  s.summary     = "Ruby on Rails Engine for Twitter Bootstrap ."
  s.description = "Ruby on Rails Engine for Twitter Bootstrap with Assets, Helpers and more."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "sqlite3"
end
