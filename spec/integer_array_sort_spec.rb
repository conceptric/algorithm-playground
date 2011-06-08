require_relative '../lib/integer_array_sort.rb'

describe "IntegerArraySort" do

  describe "::insertion_sort into ascending order" do
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
  
  # describe "::merge_sort into ascending order" do
  #   it "reverses a simple 2 element array" do
  #     IntegerArraySort::merge_sort([2,1]).should eql([1,2])
  #   end
  # 
  #   it "reverses a 3 element array" do
  #     IntegerArraySort::merge_sort([3,2,1]).should eql([1,2,3])
  #   end
  #   
  #   it "works with arrays that are not sequential" do
  #     IntegerArraySort::merge_sort([2,3,1]).should eql([1,2,3])
  #   end
  # 
  #   it "works with arrays containg repeated values" do
  #     IntegerArraySort::merge_sort([2,3,1,2]).should eql([1,2,2,3])
  #   end
  # 
  #   it "reverses much larger arrays" do
  #     test_array = (1..30).to_a.reverse
  #     expected_array = test_array.reverse
  #     IntegerArraySort::merge_sort(test_array).
  #       should eql(expected_array)
  #   end
  # end      

  describe "::split_array_into_two" do
    it "produces two equal size halves for even sized arrays" do
      original = [6,5,4,3,2,1]
      expected1 = [6,5,4]
      expected2 = [3,2,1]
      split = IntegerArraySort::split_array_into_two(original)
      split.size.should eql(2)
      split.first.should eql(expected1)
      split.last.should eql(expected2)
    end

    it "produces two unequal size halves for odd sized arrays" do
      original = [6,4,3,2,1]
      expected1 = [6,4]
      expected2 = [3,2,1]
      split = IntegerArraySort::split_array_into_two(original)
      split.size.should eql(2)
      split.first.should eql(expected1)
      split.last.should eql(expected2)
    end
  end        

  describe "::recursively_sort_both_halves" do
    it "sorts both halves of the original data independently" do
      original = [[13,2,20,7],[1,11,9,12]]      
      expected = [[2,7,13,20],[1,9,11,12]]
      sorted = IntegerArraySort::recursively_sort_both_halves(original)
      sorted.first.should eql(expected.first)
      sorted.last.should eql(expected.last)
    end
    
    it "returns the original array it is not in two parts" do
      original = [6,5,4,3,2,1]
      IntegerArraySort::recursively_sort_both_halves(original).
        should eql(original)
    end
  end
end
