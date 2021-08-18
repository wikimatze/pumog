$:.push File.expand_path("../lib", __FILE__)
require "pumog/version"

Gem::Specification.new do |s|
  s.name        = "pumog"
  s.version     = Pumog::VERSION
  s.authors     = ["Matthias Guenther"]
  s.email       = ["matthias@wikimatze.de"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/wikimatze/pumog"
  s.summary     = %q{Create new puppet module with this template.}
  s.description = %q{Generate a basic structure for new puppet modules with or without documentation.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", "~> 3.3"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_runtime_dependency "thor", "~>0.19"
end
