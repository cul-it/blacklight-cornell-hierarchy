lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blacklight/hierarchy/version'

Gem::Specification.new do |s|
  s.name        = 'blacklight-hierarchy'
  s.version     = Blacklight::Hierarchy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Michael B. Klein']
  s.email       = ['dlss-dev@lists.stanford.edu']
  s.homepage    = 'https://github.com/sul-dlss/blacklight-hierarchy'
  s.summary     = 'Hierarchical Facets for Blacklight'
  s.description = 'Allows delimited Solr facets to become hierarchical trees in Blacklight.'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'rails', '>= 4.1', '< 6'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'blacklight', '>= 6', '< 8'

  s.add_development_dependency 'rsolr'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'engine_cart', '~> 1.0'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coveralls'
end
