# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{backports}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc-Andr\303\251 Lafortune"]
  s.date = %q{2009-04-01}
  s.description = %q{Essential backports that make it possible to use some of the really nice features of ruby 1.8.7, ruby 1.9 and rails from ruby 1.8.6 and earlier.}
  s.email = %q{github@marc-andre.ca}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/backports", "lib/backports/enumerable.rb", "lib/backports/fixnum.rb", "lib/backports/hash.rb", "lib/backports/module.rb", "lib/backports/object.rb", "lib/backports/string.rb", "lib/backports/symbol.rb", "lib/backports.rb", "test/backports_test.rb", "test/test_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/marcandre/backports}
  s.rdoc_options = ["--title", "Backports library", "--main", "README.rdoc", "--line-numbers", "--inline-source", "--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{backports}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end