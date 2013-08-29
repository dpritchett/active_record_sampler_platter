# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_sampler_platter/version'

Gem::Specification.new do |spec|
  spec.name          = "active_record_sampler_platter"
  spec.version       = ActiveRecordSamplerPlatter::VERSION
  spec.authors       = ["Daniel J. Pritchett"]
  spec.email         = ["dpritchett@gmail.com"]
  spec.description   = %q{Adds Array-style :sample methods to ActiveRecord objects}
  spec.summary       = %q{Now you can pull a random record from a table!}
  spec.homepage      = "http://github.com/dpritchett/active_record_sampler_platter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
