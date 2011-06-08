class IntegerArraySort
  def self.insertion_sort(unsorted)
    if unsorted.class == Array && !unsorted.empty?
      sorted = unsorted
      n = unsorted.size
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
    else
      []
    end
  end

  def self.merge_sort(unsorted)  
    if unsorted.class == Array && !unsorted.empty?
      if unsorted.size == 1
        unsorted
      else
        halves = split_array_into_two(unsorted)
        sorted = recursively_sort_both_halves(halves)
        merge_two_arrays(sorted)
      end
    else
      []
    end
  end

  def self.split_array_into_two(unsorted)
    halves = [[],unsorted]
    while halves.first.size <= ( unsorted.size / 2 )
      halves.first << halves.last.shift
    end
    halves
  end                                               
  
  def self.recursively_sort_both_halves(unsorted)   
    if unsorted.size == 2
      [insertion_sort(unsorted.first), insertion_sort(unsorted.last)]
    else
      unsorted
    end
  end
  
  def self.merge_two_arrays(sorted)
    if  sorted.size == 2 && 
        sorted.first.class == Array && 
        sorted.last.class == Array
      merged = []                    
      while !sorted.first.empty? || !sorted.last.empty?
        if compare_the_front_of_arrays(sorted)
          merged << sorted.first.shift
        else
          merged << sorted.last.shift
        end
      end
      merged    
    else
      sorted
    end
  end
  
  def self.compare_the_front_of_arrays(sorted)
    if sorted.first.first == nil
      false
    elsif sorted.last.first == nil
      true
    else
      sorted.first.first < sorted.last.first
    end
  end
    
end

