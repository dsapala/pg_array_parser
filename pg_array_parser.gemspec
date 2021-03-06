# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pg_array_parser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan McClain"]
  gem.email         = ["git@danmcclain.net"]
  gem.description   = %q{Simple library to parse PostgreSQL arrays into a array of strings}
  gem.summary       = %q{Converts PostgreSQL array strings into arrays of strings}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.extensions    = ['ext/pg_array_parser/extconf.rb']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pg_array_parser"
  gem.require_paths = ["lib"]
  gem.version       = PgArrayParser::VERSION

  gem.add_development_dependency 'rspec', '~> 2.10.0'
  gem.add_development_dependency 'rake', '~> 0.9.2.2'
end
