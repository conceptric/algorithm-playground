class ArraySorter
  attr_reader :unsorted

  def initialize(the_array)
    @unsorted = the_array
  end

  def insertion_sorted
    sorted = @unsorted
    n = @unsorted.size
    for j in 1..(n-1)
      key = sorted[j]
      i = j - 1
      while i >= 0 && sorted[i] > key
        sorted[i+1] = sorted[i]
        i = i - 1
      end
      sorted[i+1] = key
    end
    sorted
  end
end

describe "ArraySorter" do
	it "takes an array of data to be sorted" do
    ArraySorter.new([])
  end

  it "returns the original data when asked" do
    ArraySorter.new([3,1]).unsorted.should eql([3,1])
  end

  it "returns the data sorted in ascending order" do
    ArraySorter.new([2,1]).insertion_sorted.should eql([1,2])
  end

  it "returns a larger array sorted in ascending order" do
    ArraySorter.new([3,2,1]).insertion_sorted.should eql([1,2,3])
  end
end
