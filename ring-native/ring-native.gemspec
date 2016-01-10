# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ring/native/version"

Gem::Specification.new do |spec|
  spec.name          = "ring-native"
  spec.version       = Ring::Native::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["bascule@gmail.com"]

  spec.summary       = "The *ring* cryptography library, packaged as a RubyGem"
  spec.description   = "Snapshots of the *ring* cryptography library, packaged in RubyGem format"
  spec.homepage      = "https://github.com/cryptosphere/ruby-ring"
  spec.license       = "OpenSSL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files += Dir.glob("vendor/ring/**/*")
  spec.require_paths = ["lib"]

  spec.extensions    = ["ext/ring/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
