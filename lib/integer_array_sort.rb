class IntegerArraySort
  def self.insertion_sort(unsorted)
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
  end

  def self.merge_sort(unsorted)
     
  end
  
  def self.split_array_into_two(unsorted)
    halves = [[],unsorted]
    while halves.first.size <= ( unsorted.size / 2 )
      halves.first << halves.last.shift
    end
    halves
  end
end

