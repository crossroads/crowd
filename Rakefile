# -*- ruby -*-

require 'rubygems'
require 'rake'
require 'jeweler'
require './lib/crowd/version'


# Install the gem locally via 'rake install'.

task :default => :test

task :test do
  system("spec spec/crowd_spec.rb")
end

task :wsdl2ruby do
  system("cd lib/crowd/soap/ && wsdl2ruby.rb --force --wsdl http://localhost:8095/crowd/services/SecurityServer?wsdl --type client")
  system("cp lib/crowd/soap/defaultMappingRegistry.rb lib/crowd/soap/mapping_registry.rb")
  system("rm lib/crowd/soap/defaultMappingRegistry.rb")
  system("cp lib/crowd/soap/defaultDriver.rb lib/crowd/soap/driver.rb")
  system("rm lib/crowd/soap/defaultDriver.rb")
  puts "You will need to modify some 'require' statements in the generated sources manually to load files from the right location."
end

task :push => [:test, :build] do
  system("gem push pkg/crowd-crossroads-#{Crowd::Version::STRING}.gem")
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "crowd-crossroads"
    gemspec.version = Crowd::Version::STRING
    gemspec.summary = "Ruby client for Atlassian Crowd 2.0"
    gemspec.description = "A client for Atlassian Crowd v2.0. Tested with Crowd 2.0.2 and 2.0.5."
    gemspec.email = "enquiries @nospam@ globalhand.org"
    gemspec.homepage = "http://github.com/crossroads/crowd"
    gemspec.authors = ["Stefan Wille", "Evgeny Zislis", "Jason Rimmer & Daniel Morrison", "Steve Kenworthy & Sam Scully"]
    gemspec.add_dependency('soap4r')
    gemspec.add_development_dependency('rspec')
    # Silence a warning about missing rubyforge_project
    gemspec.rubyforge_project = "nowarning"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end


# vim:syn=ruby
