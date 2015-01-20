# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itebooks/version'

Gem::Specification.new do |spec|
  spec.name          = "itebooks"
  spec.version       = Itebooks::VERSION
  spec.authors       = ["George Sun"]
  spec.email         = ["sunwinner3@gmail.com"]
  spec.summary       = %q{Query books info from www.it-ebooks.info.}
  spec.description   = %q{Query books info from www.it-ebooks.info.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end