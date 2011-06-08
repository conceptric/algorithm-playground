require_relative 'integer_array_sort'

class SortTestBed
  attr_reader :unsorted, :start_time, :finish_time

  def initialize(the_array)
    @unsorted = the_array           
    @start_time = nil
    @finish_time = nil
  end      
  
  def elapsed_time
    finish_time - start_time
  end

  def insertion_sorted 
    @start_time = Time.now
    IntegerArraySort::insertion_sort(@unsorted)
    @finish_time = Time.now
  end
end

