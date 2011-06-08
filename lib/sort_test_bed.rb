require_relative 'integer_array_sort'

class SortTestBed
  attr_reader :unsorted, :start_time, :finish_time

  def initialize(the_array)
    @unsorted = the_array           
    reset_timer
  end      
  
  def elapsed_time    
    if start_time == nil || finish_time == nil
      0
    else
      finish_time - start_time
    end
  end

  def reset_timer
    @start_time = nil
    @finish_time = nil    
  end

  def insertion_sorted 
    @start_time = Time.now
    IntegerArraySort::insertion_sort(@unsorted)
    @finish_time = Time.now
  end
end

