$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "city_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "city_select"
  s.version     = CitySelect::VERSION
  s.authors     = ["Yuri Shchanov"]
  s.email       = ["y.shchanov@gmail.com"]
  s.homepage    = "https://github.com/Yuri-Shchanov/city_select"
  s.summary     = "Gem for selecting country, region and city."
  s.description = "Gem for selecting country, region and city."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">=4.2.7"

  s.add_development_dependency "pg"
end
