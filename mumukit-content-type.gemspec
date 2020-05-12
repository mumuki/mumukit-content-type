# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mumukit/content_type/version'

Gem::Specification.new do |spec|
  spec.name = 'mumukit-content-type'
  spec.version = Mumukit::ContentType::VERSION
  spec.authors = ['Franco Leonardo Bulgarelli']
  spec.email = ['franco@mumuki.org']

  spec.summary = 'Content Type handling for Mumuki'
  spec.homepage = 'http://mumuki.io'
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*', 'vendor/**/*']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~>2.9'

  spec.add_dependency 'rouge', '~> 3.1'
  spec.add_dependency 'redcarpet', '~> 3.3.2'
  spec.add_dependency 'mumukit-core', '~> 1.0'
  spec.add_dependency 'sanitize', '~> 5.0'
  spec.add_dependency 'mumuki-emojis', '~> 1.0'
end
