require File.expand_path('../lib/licensee/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name    = 'licensee'
  gem.version = Licensee::VERSION

  gem.summary = 'A Ruby Gem to detect open source project licenses'
  gem.description = <<-DESC
    Licensee automates the process of reading LICENSE files and
    compares their contents to known licenses using a fancy maths.
  DESC

  gem.authors  = ['Ben Balter']
  gem.email    = 'ben.balter@github.com'
  gem.homepage = 'http://github.com/benbalter/licensee'
  gem.license  = 'MIT'

  gem.bindir = 'bin'
  gem.executables << 'licensee'

  gem.add_dependency('rugged', '~> 0.23')
  gem.add_development_dependency('pry', '~> 0.9')
  gem.add_development_dependency('shoulda', '~> 3.5')
  gem.add_development_dependency('rake', '~> 10.3')
  gem.add_development_dependency('ruby-prof', '~> 0.15')
  gem.add_development_dependency('rubocop', '~> 0.35')

  # ensure the gem is built out of versioned files
  gem.files = Dir[
    'Rakefile',
    '{bin,lib,man,test,vendor,spec}/**/*',
    'README*', 'LICENSE*'
  ] & `git ls-files -z`.split("\0")
end
