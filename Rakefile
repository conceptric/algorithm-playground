require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
 
task :default => :spec
task :test => :spec

desc "Run all specs"
RSpec::Core::RakeTask.new('spec') do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end