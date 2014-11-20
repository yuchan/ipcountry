# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ipcountry/version'

Gem::Specification.new do |spec|
  spec.name          = "ipcountry"
  spec.version       = Ipcountry::VERSION
  spec.authors       = ["Yusuke Ohashi"]
  spec.email         = ["yusuke@junkpiano.me"]
  spec.summary       = %q{look up ip address information.}
  spec.description   = %q{This gem looks up ip address infomation. I use this api. http://ip-api.com/docs/api:json}
  spec.homepage      = "https://github.com/yuchan/ipcountry"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard" 
  spec.add_development_dependency "guard-minitest"
end
