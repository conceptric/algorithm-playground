require_relative 'integer_array_sort'

class SortTestBed
  attr_reader :unsorted

  def initialize(the_array)
    @unsorted = the_array           
    @timer = Timer.new
  end      
  
  def elapsed_time    
    @timer.elapsed_time
  end

  def insertion_sorted 
    @timer.start
    IntegerArraySort::insertion_sort(@unsorted)
    @timer.stop
  end
end

