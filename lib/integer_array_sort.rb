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
end

