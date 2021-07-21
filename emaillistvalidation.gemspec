# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emaillistvalidation/version'

Gem::Specification.new do |spec|
  spec.name          = "emaillistvalidation"
  spec.version       = Emailvalidation::VERSION
  spec.authors       = ["Xavier Luijer"]
  spec.email         = ["xavier@emailvalidation.fr"]

  spec.summary       = "Ruby wrapper for the Emailvalidation.fr API"
  spec.description   = "Provides a ruby wrapper for the OneByOne, FileUpload and FileStatus APIs."
  spec.homepage      = "https://github.com/Xavierluijer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'rest-client', '~> 1.8'
end
