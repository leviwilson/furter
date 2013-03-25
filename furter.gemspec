# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'furter/version'

Gem::Specification.new do |gem|
  gem.name          = "furter"
  gem.version       = Furter::VERSION
  gem.authors       = ["Levi Wilson"]
  gem.email         = ["levi@leviwilson.com"]
  gem.description   = %q{Higher-level abstraction around iOS drivers}
  gem.summary       = %q{Higher-level abstraction around iOS drivers}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'frank-cucumber', '~> 1.1.0'
  gem.add_dependency 'page_navigation', '>= 0.7'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'require_all'
end
