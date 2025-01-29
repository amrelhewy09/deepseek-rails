# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "deepseek-rails"
  spec.version = "0.1.0"
  spec.authors = ["amr elhewi"]
  spec.email = ["amrelhewi@gmail.com"]

  spec.summary = "Deepseek wrapper for ruby"
  spec.homepage = "https://github.com/amrelhewy09/deepseek-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/amrelhewy09/deepseek-rails"
  spec.metadata["changelog_uri"] = "https://github.com/amrelhewy09/deepseek-rails"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files         = ["lib/deepseek.rb"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
