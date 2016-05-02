# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'native_math/version'

Gem::Specification.new do |spec|
  spec.name          = "native_math"
  spec.version       = NativeMath::VERSION
  spec.authors       = ["George Withers"]
  spec.email         = ["george.withers@gmail.com"]

  spec.summary       = %q{Simple experiment in native ruby gems}
  spec.description   = %q{Simple experiment in native ruby gems making a tiny set of math functions}
  spec.homepage      = "https://github.com/gwithers/native_math"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/native_math/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end
