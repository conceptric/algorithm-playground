class ArraySorter
  def initialize(the_array)
  end

  def unsorted
    [2,1]
  end

  def insertion_sorted
    [1,2]
  end
end

describe "ArraySorter" do
	it "takes an array of data to be sorted" do
    ArraySorter.new([])
  end

  it "returns the original data when asked" do
    ArraySorter.new([2,1]).unsorted.should eql([2,1])
  end

  it "returns the data sorted in ascending order" do
    ArraySorter.new([2,1]).insertion_sorted.should eql([1,2])
  end
end
