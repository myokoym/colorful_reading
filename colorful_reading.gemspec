# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colorful_reading/version'

Gem::Specification.new do |spec|
  spec.name          = "colorful_reading"
  spec.version       = ColorfulReading::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["myokoym@gmail.com"]

  spec.summary       = "Colorize sentences by part of speech in English for CLI."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/myokoym/colorful_reading"
  spec.license       = "GPLv2+"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("engtagger")
  spec.add_runtime_dependency("colorize")

  spec.add_development_dependency("test-unit")
  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
end
