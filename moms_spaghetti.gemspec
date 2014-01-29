$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "moms_spaghetti/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = "moms_spaghetti"
  s.version       = MomsSpaghetti::VERSION
  s.authors       = ["Luke van der Hoeven"]
  s.email         = ["hungerandthirst@gmail.com"]
  s.summary       = %q{Killing AR callbacks since 2014}
  s.description   = %q{See this [tweet](https://twitter.com/mperham/status/428284367811514368)}
  s.homepage      = "https://github.com/plukevdh/moms_spaghetti"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
