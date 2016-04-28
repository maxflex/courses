$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mobile/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mobile"
  s.version     = Mobile::VERSION
  s.authors     = ["Alex Kulishov"]
  s.email       = ["alkul93@yandex.ru"]
  s.homepage    = ""
  s.summary     = %q{ wow great engine }
  s.description = %q{ trust me, its a great engine which is great}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "angularjs-rails"
  s.add_dependency "ng-rails-csrf"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "slim"

  s.add_development_dependency "bundler", "~> 1.7"
end
