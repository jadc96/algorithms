# Two-way merge sort algorithm

def merge_sort(array_one, array_two)
  m = array_one.length
  n = array_two.length
  i, j, k = 0, 0, 0
  sorted_array = []

  while (i < m && j < n)
    if array_one[i] < array_two[j]
      sorted_array[k] = array_one[i]
      k += 1
      i += 1
    else
      sorted_array[k] = array_two[j]
      k += 1
      j += 1
    end
  end

  while i < m
    sorted_array[k] = array_one[i]
    k += 1
    i += 1
  end

  while j < n
    sorted_array[k] = array_two[j]
    k += 1
    i += 1
  end
end
