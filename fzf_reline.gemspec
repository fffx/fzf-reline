# frozen_string_literal: true

require_relative "lib/fzf_reline/version"

Gem::Specification.new do |spec|
  spec.name          = "fzf_reline"
  spec.version       = FzfReline::VERSION
  spec.authors       = ["Fangxing"]
  spec.email         = ["fangxing204@gmail.com"]

  spec.summary       = "Use fzf search history in ruby reline"
  spec.description   = "Use fzf search history in ruby reline"
  spec.homepage      = "https://github.com/fffx/fzf-reline"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fffx/fzf-reline"
  spec.metadata["changelog_uri"] = "https://github.com/fffx/fzf-reline"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "reline", "> 0.02"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
