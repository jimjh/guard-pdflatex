# ~*~ encoding: utf-8 ~*~
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/pdflatex/version'

Gem::Specification.new do |gem|

  gem.name          = "guard-pdflatex"
  gem.version       = Guard::Pdflatex::VERSION
  gem.authors       = ["Jiunn Haur Lim"]
  gem.email         = ["codex.is.poetry@gmail.com"]
  gem.description   = %q{guard for pdflatex}
  gem.summary       = %q{guard for pdflatex}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'guard', '~> 1.6.2'

end
