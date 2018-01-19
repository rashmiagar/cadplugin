$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cadplugin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cadplugin"
  s.version     = Cadplugin::VERSION
  s.authors     = ["rashmi1985"]
  s.email       = ["rashmi@1985.co.in"]
  s.homepage    = "http://www.google.com"
  s.summary     = " Summary of Cadplugin."
  s.description = " Description of Cadplugin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.1"
  s.add_dependency "redis"
  s.add_dependency "redis-namespace"
  s.add_development_dependency "sqlite3"
end
