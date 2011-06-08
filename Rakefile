require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
 
task :default => :spec
task :test => :spec

desc "Run all specs"
RSpec::Core::RakeTask.new('spec') do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = []
end                  

desc "Run insertion test"
task :insert do
  require_relative './lib/sort_test_bed.rb'
  test_array = (1..1000).to_a.reverse          
  SortTestBed.new(test_array).benchmark_integer_sorting  
end
