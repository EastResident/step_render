$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "step_render/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "step_render"
  s.version     = StepRender::VERSION
  s.authors     = ["EastResident"]
  s.email       = ["eastresident@gmail.com"]
  s.homepage    = "https://github.com/EastResident/step_render"
  s.summary     = "It is very easy to enable lazy loading of partial with scroll in views"
  s.description = "It is very easy to enable lazy loading of partial with scroll in views"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.2"

  s.add_development_dependency "sqlite3"
end
