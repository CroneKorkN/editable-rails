# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "editable/version"

Gem::Specification.new do |spec|
  spec.name          = "editable"
  spec.version       = Editable::VERSION
  spec.authors       = ["ckn"]
  spec.email         = ["ckn@freibrief.net"]

  spec.summary       = %q{summary}
  spec.description   = %q{desc.}
  spec.homepage      = "https://sublimity.de"

  spec.require_paths = ["lib"]
  spec.files = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
end
