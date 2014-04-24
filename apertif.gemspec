# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apertif/version'

Gem::Specification.new do |spec|
  spec.name          = "apertif"
  spec.version       = Apertif::VERSION
  spec.authors       = ["Josh Lindsey"]
  spec.email         = ["joshua.s.lindsey@gmail.com"]
  spec.summary       = %q{Make files and directory structures with pretty output}
  spec.description   = %q{Code and file structure generation framework with an eye towards nice output formatting.}
  spec.homepage      = "https://github.com/jlindsey/apertif"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "highline", "~> 1.6.21"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
