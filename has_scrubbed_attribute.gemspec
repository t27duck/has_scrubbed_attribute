# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_scrubbed_attribute/version'

Gem::Specification.new do |spec|
  spec.name          = "has_scrubbed_attribute"
  spec.version       = HasScrubbedAttribute::VERSION
  spec.authors       = ["Tony Drake"]
  spec.email         = ["t27duck@gmail.com"]

  spec.summary       = %q{Scrub attributes of dangerous HTML input before they get into the database}
  spec.homepage      = "https://github.com/t27duck/has_scrubbed_attribute"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"

  spec.add_dependency "loofah", ">= 2.0.0"
  spec.add_dependency "activerecord", ">= 3.2.0"
end
