lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "peatio/tron/version"

Gem::Specification.new do |spec|
  spec.name = "exchange-tron"
  spec.version = Peatio::Tron::VERSION
  spec.authors = ["ABC"]
  spec.email = [""]

  spec.summary = %q{Gem for extending Peatio plugable system with Tron implementation.}
  spec.description = %q{Tron gem which implements Peatio::Blockchain::Abstract & Peatio::Wallet::Abstract.}
  spec.homepage = ""
  spec.license = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 5.2.3"
  spec.add_dependency "better-faraday", "~> 1.0.5"
  spec.add_dependency "faraday", "~> 0.17"
  spec.add_dependency "memoist", "~> 0.16.0"
  spec.add_dependency "digest-sha3", "~> 1.1.0"
  spec.add_dependency "ed25519"
  spec.add_dependency "ffi"
  spec.add_dependency "peatio", ">= 2.6.1"
  spec.add_dependency 'net-http-persistent', '~> 4.0.1'

  spec.add_development_dependency "bundler", ">= 1.3.0"
  spec.add_development_dependency "mocha", "~> 1.8"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.5"
end
