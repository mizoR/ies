# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ies/version'

Gem::Specification.new do |spec|
  spec.name          = "ies"
  spec.version       = Ies::VERSION
  spec.authors       = ["mizokami"]
  spec.email         = ["r.mizokami@gmail.com"]

  spec.summary       = %q{Interactive Elasticsearch CLI}
  spec.description   = %q{Interactive Elasticsearch CLI}
  spec.homepage      = "https://github.com/mizoR/ies"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "pry"
  spec.add_dependency "elasticsearch"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
