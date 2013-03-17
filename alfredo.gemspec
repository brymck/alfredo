# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alfredo/version'

Gem::Specification.new do |spec|
  spec.name          = "alfredo"
  spec.version       = Alfredo::VERSION
  spec.authors       = ["Bryan McKelvey"]
  spec.email         = ["bryan.mckelvey@gmail.com"]
  spec.description   = %q{Simple utility methods for use with Alfred 2}
  spec.summary       = %q{Simple utility methods for use with Alfred 2}
  spec.homepage      = "http://github.com/brymck/alfredo"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "autotest", "~> 4.0"
  spec.add_development_dependency "bundler",  "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec",    "~> 2.0"

  spec.add_runtime_dependency     "nokogiri", "~> 1.0"
  spec.add_runtime_dependency     "plist",    "~> 3.0"
  spec.add_runtime_dependency     "sqlite3",  "~> 1.3"
end
