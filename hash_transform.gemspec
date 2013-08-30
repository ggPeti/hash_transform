# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_transform/version'

Gem::Specification.new do |gem|
  gem.name          = "hash_transform"
  gem.version       = HashTransform::VERSION
  gem.authors       = ["Ferenczy Péter"]
  gem.email         = ["ggpeti@gmail.com"]
  gem.description   = %q{Use this gem to extend the Hash class with useful key and value mapping methods.}
  gem.summary       = %q{This gem adds map_keys, map_keys!, map_values, map_values! methods to the Hash class.}
  gem.homepage      = ""
  gem.license       = "WTFPL"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
