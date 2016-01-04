# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ring/version'

Gem::Specification.new do |spec|
  spec.name          = "ring"
  spec.version       = Ring::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["bascule@gmail.com"]

  spec.summary       = "Ruby FFI binding to the *ring* cryptography library"
  spec.description   = "A binding to the *ring* cryptography, a fork of BoringSSL"
  spec.homepage      = "https://github.com/cryptosphere/ruby-ring"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|ruby-native)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ring-native"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
