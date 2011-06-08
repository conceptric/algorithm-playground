require_relative 'integer_array_sort'

class SortTestBed
  attr_reader :unsorted
  attr_reader :start_time

  def initialize(the_array)
    @unsorted = the_array           
    @start_time = nil
  end

  def insertion_sorted 
    @start_time = Time.now
    IntegerArraySort::insertion_sort(@unsorted)
  end
end

