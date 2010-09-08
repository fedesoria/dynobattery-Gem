# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dynobattery}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Federico Soria"]
  s.date = %q{2010-07-08}
  s.description = %q{Submit request operations for dyno calculations on Heroku}
  s.email = %q{federico@dospuntocero.com.mx}
  s.extra_rdoc_files = ["README.rdoc", "lib/dynobattery.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "dynobattery.gemspec", "lib/dynobattery.rb"]
  s.homepage = %q{http://github.com/fedesoria/dynobattery}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Dynobattery", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dynobattery}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Submit request operations for dyno calculations on Heroku}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
