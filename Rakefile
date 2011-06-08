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

desc "Run benchmark"
task :benchmark do
  require_relative './lib/sort_test_bed.rb'
  test_array = 100.times.map{ Random.new.rand(1..20) }
  puts test_array.to_s
  SortTestBed.new(test_array).benchmark_integer_sorting  
end
