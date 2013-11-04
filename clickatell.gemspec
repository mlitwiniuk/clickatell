# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clickatell/version'

Gem::Specification.new do |spec|
  spec.name          = 'clickatell'
  spec.version       = Clickatell::VERSION
  spec.authors       = ['Luke Redpath']
  spec.email         = ['luke@lukeredpath.co.uk']
  spec.summary       = %q{Ruby interface to the Clickatell SMS gateway service.}
  spec.homepage      = 'http://clickatell.rubyforge.org'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w[lib]

  spec.extra_rdoc_files = %w{RDOC_README.txt History.txt License.txt}
  spec.has_rdoc = true
  spec.rdoc_options = %w{--main RDOC_README.txt}

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'RedCloth'
  spec.add_development_dependency 'syntax'
end
