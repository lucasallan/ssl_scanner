# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ssl_scanner/version'

Gem::Specification.new do |gem|
  gem.name          = "ssl_scanner"
  gem.version       = SslScanner::VERSION
  gem.authors       = ["Lucas Allan Amorim"]
  gem.email         = ["lucas.allan@gmail.com"]
  gem.description   = %q{Get ssl information from domains}
  gem.summary       = %q{Get ssl information from domains}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'webmock', '1.8.0'

end
