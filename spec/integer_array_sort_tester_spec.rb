require_relative '../lib/integer_array_sort_tester.rb'

describe "IntegerArraySortTester" do
	it "takes an array of data to be sorted" do
    IntegerArraySortTester.new([])
  end

  it "returns the original data when asked" do
    IntegerArraySortTester.new([3,1]).
      unsorted.should eql([3,1])
  end

  describe "Insertion sort in ascending order" do
    it "reverses a simple 2 element array" do
      IntegerArraySortTester.new([2,1]).
        insertion_sorted.should eql([1,2])
    end

    it "reverses a 3 element array" do
      IntegerArraySortTester.new([3,2,1]).
        insertion_sorted.should eql([1,2,3])
    end
    
    it "works with arrays that are not sequential" do
      IntegerArraySortTester.new([2,3,1]).
        insertion_sorted.should eql([1,2,3])
    end

    it "works with arrays containg repeated values" do
      IntegerArraySortTester.new([2,3,1,2]).
        insertion_sorted.should eql([1,2,2,3])
    end

    it "reverses much larger arrays" do
      test_array = (1..30).to_a.reverse
      expected_array = test_array.reverse
      IntegerArraySortTester.new(test_array).
        insertion_sorted.should eql(expected_array)
    end
  end
end
