require_relative 'integer_array_sort'
require 'Benchmark'

class SortTestBed
  attr_reader :unsorted

  def initialize(the_array)
    @unsorted = the_array           
  end      

  def benchmark_integer_sorting
    Benchmark.bmbm do |x|
      x.report('Insertion') do
        IntegerArraySort::insertion_sort(@unsorted)
      end
      x.report('Merge') do
        IntegerArraySort::merge_sort(@unsorted)
      end
    end 
  end
end

