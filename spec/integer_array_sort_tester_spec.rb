require_relative '../lib/integer_array_sort_tester.rb'

describe "IntegerArraySortTester" do

	it "takes an array of data to be sorted" do
    IntegerArraySortTester.new([])
  end

  it "returns the original data when asked" do
    IntegerArraySortTester.new([3,1]).
      unsorted.should eql([3,1])
  end
                       
  it "uses the insertion sort method of IntegerArraySort" do
    IntegerArraySort.should_receive(:insertion_sort).once.
    with([2,1])
    IntegerArraySortTester.new([2,1]).insertion_sorted
  end

end
