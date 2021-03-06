# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fair_random/version'

Gem::Specification.new do |spec|
  spec.name          = "fair_random"
  spec.version       = FairRandom::VERSION
  spec.authors       = ["todesking"]
  spec.email         = ["discommunicative@gmail.com"]
  spec.description   = %q{"Fair" random number generator}
  spec.summary       = %q{"Fair" random number generator}
  spec.homepage      = "https://github.com/todesking/fair_random"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "count_by"
  spec.add_development_dependency "1_as_identity_function"
end
