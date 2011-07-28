$:.push File.expand_path('../lib', __FILE__)
require 'adapter/leveldb/version'

Gem::Specification.new do |s|
  s.name        = 'adapter-leveldb'
  s.version     = Adapter::LevelDB::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Blake Imsland'
  s.email       = 'blake@retroco.de'
  s.summary     = %q(Adapter for LevelDB)
  s.description = %q(Adapter for LevelDB)

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'adapter', '~> 0.5.2'
  s.add_dependency 'leveldb-ruby', '~> 0.7'
end
