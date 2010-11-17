# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{crowd-crossroads}
  s.version = "0.5.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Wille", "Evgeny Zislis", "Jason Rimmer & Daniel Morrison", "Steve Kenworthy & Sam Scully"]
  s.date = %q{2010-11-17}
  s.description = %q{A client for Atlassian Crowd v2.0. Tested with Crowd 2.0.2 and 2.0.5.}
  s.email = %q{enquiries @nospam@ globalhand.org}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "History.txt",
    "README.rdoc",
    "Rakefile",
    "crowd-crossroads.gemspec",
    "demo/crowd_demo.rb",
    "lib/crowd.rb",
    "lib/crowd/soap/SecurityServerClient.rb",
    "lib/crowd/soap/crowd-2.0.5.wsdl",
    "lib/crowd/soap/default.rb",
    "lib/crowd/soap/driver.rb",
    "lib/crowd/soap/mapping_registry.rb",
    "lib/crowd/user_attribute_keys.rb",
    "lib/crowd/version.rb",
    "spec/crowd_spec.rb"
  ]
  s.homepage = %q{http://github.com/crossroads/crowd}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nowarning}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby client for Atlassian Crowd 2.0}
  s.test_files = [
    "spec/crowd_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<soap4r>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<soap4r>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

