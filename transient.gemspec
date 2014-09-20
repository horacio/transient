# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transient/version'

Gem::Specification.new do |spec|
  spec.name          = "transient"
  spec.version       = Transient::VERSION
  spec.authors       = ["Horacio Bertorello"]
  spec.email         = ["syrii@msn.com"]
  spec.summary       = %q{Transient activity archiver and aggregator.}
  spec.homepage      = "https://github.com/svankmajer/transient"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit", "~> 3.3"

  spec.add_development_dependency "guard-rspec", "~> 4.3"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
