
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "matties_first_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "matties_first_gem"
  spec.version       = MattiesFirstGem::VERSION
  spec.authors       = ["matt6390"]
  spec.email         = ["matthewstone639@gmail.com"]

  spec.summary       = "Its my first gem"
  spec.description   = "My first gem can only mean so many things, does it really need a description?"
  spec.homepage      = 'https://github.com/matt6390/matties_first_gem'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "unirest", "~> 1.1.2"
end
