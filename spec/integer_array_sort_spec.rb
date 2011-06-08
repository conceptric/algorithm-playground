require_relative '../lib/integer_array_sort.rb'

describe "IntegerArraySort" do

  describe "Insertion sort in ascending order" do
    it "reverses a simple 2 element array" do
      IntegerArraySort::insertion_sort([2,1]).should eql([1,2])
    end

    it "reverses a 3 element array" do
      IntegerArraySort::insertion_sort([3,2,1]).should eql([1,2,3])
    end
    
    it "works with arrays that are not sequential" do
      IntegerArraySort::insertion_sort([2,3,1]).should eql([1,2,3])
    end

    it "works with arrays containg repeated values" do
      IntegerArraySort::insertion_sort([2,3,1,2]).should eql([1,2,2,3])
    end

    it "reverses much larger arrays" do
      test_array = (1..30).to_a.reverse
      expected_array = test_array.reverse
      IntegerArraySort::insertion_sort(test_array).
        should eql(expected_array)
    end
  end 
  
end
