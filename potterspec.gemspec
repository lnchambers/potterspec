
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "potterspec/version"

Gem::Specification.new do |spec|
  spec.name          = "potterspec"
  spec.version       = Potterspec::VERSION
  spec.authors       = ["Luke Chambers"]
  spec.email         = ["lnchambers@icloud.com"]

  spec.summary       = %q{A Harry Potter theme for Rspec}
  spec.description   = %q{PotteRspec is a pre-processor for Rspec which allows you to use methods based on Harry Potter themes.}
  spec.homepage      = "http://www.github.com/lnchambers/potterspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
