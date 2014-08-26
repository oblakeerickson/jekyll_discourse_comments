# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/discourse/comments/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-discourse-comments"
  spec.version       = Jekyll::Discourse::Comments::VERSION
  spec.authors       = ["Blake Erickson"]
  spec.email         = ["o.blakeerickson@gmail.com"]
  spec.summary       = "A Jekyll plugin for adding Discourse comments"
  spec.description   = "A Jekyll plugin for adding Discourse comments to the bottom of each post"
  spec.homepage      = "https://github.com/oblakeerickson/jekyll-discourse-comments"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
