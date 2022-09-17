def quick_sort(array, first, last)
  if first < last
    j = partition(array, first, last)
    quick_sort(array, first, j-1)
    quick_sort(array, j+1, last)
  end
  return array
end

def partition(array, first, last)
  pivot = array[last]
  p_index = first # "p" stands for "partitioning", not "pivot"
  i = first
  while i < last
    if array[i] <= pivot
      array[p_index], array[i] = array[i], array[p_index]
      p_index += 1
    end
  i += 1
  end
  array[p_index], array[last] = array[last], array[p_index]
  return p_index
end

p quick_sort([4, 3, 7, 10, 5, 84, 12, 56, 45, 3, 25], 0, 10)
