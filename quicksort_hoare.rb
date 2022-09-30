def quicksort(array, lo = 0, hi = array.length - 1)
  return if lo >= hi
  index = partition(array, lo, hi)
  quicksort(array, lo, index - 1)
  quicksort(array, index, hi)
  return array
end

def partition(array, lo, hi)
  pivot = array[(hi + lo)/2]
  while lo <= hi
    lo += 1 while array[lo] < pivot

    hi -= 1 while array[hi] > pivot

    if lo <= hi
      array[lo], array[hi] = array[hi], array[lo]
      lo += 1
      hi -= 1
    end
  end
  return lo
end

p quicksort([15, 4, 78, 25, 60, 1, 42, 16, 18, 6], 0, 9)
