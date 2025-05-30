# frozen_string_literal: true

require_relative 'lib/solidus_printful/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_printful'
  spec.version = SolidusPrintful::VERSION
  spec.authors = ['Theo Melo']
  spec.email = '9499829+theomelo@users.noreply.github.com'

  spec.summary = 'Integration between Solidus and Printful'
  spec.homepage = 'https://github.com/theomelo/solidus_printful#readme'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/theomelo/solidus_printful'
  spec.metadata['changelog_uri'] = 'https://github.com/theomelo/solidus_printful/blob/main/CHANGELOG.md'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.5', '< 4')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.bindir = 'exe'
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'solidus_core', ['>= 2.0.0', '< 5']
  spec.add_dependency 'solidus_support', '>= 0.12.0'
  spec.add_dependency 'httparty', '~> 0.23.1'

  spec.add_development_dependency 'solidus_dev_support', '~> 2.12'
end
