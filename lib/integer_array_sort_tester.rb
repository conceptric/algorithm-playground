require_relative 'integer_array_sort'

class IntegerArraySortTester
  attr_reader :unsorted

  def initialize(the_array)
    @unsorted = the_array
  end

  def insertion_sorted
    IntegerArraySort::insertion_sort(@unsorted)
  end
end

