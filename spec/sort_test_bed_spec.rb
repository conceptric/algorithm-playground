require_relative '../lib/sort_test_bed.rb'
require 'Benchmark'

describe "SortTestBed" do

	it "takes an array of data to be sorted" do
    SortTestBed.new([])
  end

  it "returns the original data when asked" do
    SortTestBed.new([3,1]).unsorted.should eql([3,1])
  end
  
  describe ".benchmark_integer_sorting" do

    it "uses the Benchmark module bmbm method" do
      Benchmark.should_receive(:bmbm).once
      SortTestBed.new([]).benchmark_integer_sorting
    end

    it "uses the insertion sort method of IntegerArraySort" do
      IntegerArraySort.should_receive(:insertion_sort).twice.
      with([2,1])
      SortTestBed.new([2,1]).benchmark_integer_sorting
    end
    
  end

end
