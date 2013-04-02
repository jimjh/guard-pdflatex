# ~*~ encoding: utf-8 ~*~
$:.push File.expand_path('../lib', __FILE__)
require 'guard/pdflatex/version'

Gem::Specification.new do |gem|

  gem.name          = 'guard-pdflatex'
  gem.version       = Guard::Pdflatex::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jiunn Haur Lim']
  gem.email         = ['codex.is.poetry@gmail.com']
  gem.description   = %q{Guard gem for PDFLatex}
  gem.summary       = %q{Guard::Pdflatex automatically generates your PDF files from your Latex files}
  gem.homepage      = 'http://github.com/jimjh/guard-pdflatex'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_path  = 'lib'

  gem.add_dependency 'guard', '~> 1.6'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'

end
