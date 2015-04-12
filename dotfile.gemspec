# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotfile/version'

Gem::Specification.new do |spec|
  spec.name          = "dotfile"
  spec.version       = Dotfile::VERSION
  spec.authors       = ["Ted Studley"]
  spec.email         = ["TedStudley@Gmail.com"]

  spec.summary       = %q{A small gem for dealing with ruby dotfiles}
  spec.description   = %q{A small gem to aid in creating, updating, and maintaining your Ruby dotfiles.}
  spec.homepage      = "https://github.com/TedStudley/dotfile.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  #end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
