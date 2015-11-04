# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metapage/version'

Gem::Specification.new do |spec|
  spec.name          = "metapage"
  spec.version       = Metapage::VERSION
  spec.authors       = ["Christoph Olszowka"]
  spec.email         = ["christoph at olszowka de"]

  spec.summary       = %q{Extract metadata about a given HTML url from open graph and regular meta tags}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/colszowka/metapage"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httpclient'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'mini_magick'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "simplecov"
end