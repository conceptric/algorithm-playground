require_relative '../lib/sort_test_bed.rb'

describe "SortTestBed" do

	it "takes an array of data to be sorted" do
    SortTestBed.new([])
  end

  it "returns the original data when asked" do
    SortTestBed.new([3,1]).
      unsorted.should eql([3,1])
  end
                       
  it "uses the insertion sort method of IntegerArraySort" do
    IntegerArraySort.should_receive(:insertion_sort).once.
    with([2,1])
    SortTestBed.new([2,1]).insertion_sorted
  end

end