# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bresson/version"

Gem::Specification.new do |s|
  s.name        = "bresson"
  s.version     = Bresson::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christian Mortaro", "Nicolas Iensen"]
  s.email       = ["christian@quavio.com.br", "nicolas@quavio.com.br"]
  s.homepage    = "https://github.com/quavio/bresson"
  s.summary     = %q{Single interface to manipulate images from 3rd party services}
  s.description = %q{Abstracts the methods from different image services, like Flickr and Picasa}

  s.rubyforge_project = "bresson"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
