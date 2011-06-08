require_relative 'integer_array_sort'
require 'Benchmark'

class SortTestBed
  attr_reader :unsorted

  def initialize(the_array)
    @unsorted = the_array           
  end      

  def benchmark_insertion
    Benchmark.bmbm do |x|
      x.report('Insertion') do
        IntegerArraySort::insertion_sort(@unsorted)
      end
    end 
  end
end

