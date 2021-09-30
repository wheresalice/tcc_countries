
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tcc_countries/version"

Gem::Specification.new do |spec|
  spec.name          = "tcc_countries"
  spec.version       = TccCountries::VERSION
  spec.authors       = ["alice"]

  spec.summary       = %q{A listing of all TCC countries and regions}
  spec.description   = %q{All Travelers Century Club countries and regions}
  spec.homepage      = "https://github.com/wheresalice/tcc_countries"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wheresalice/tcc_countries"
  spec.metadata["changelog_uri"] = "https://github.com/wheresalice/tcc_countries"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri"
end
