def iterative_binary_search(array, key)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2

    if array[mid] == key
      return mid
    elsif key < array[mid]
      high = mid - 1
    else
      low = mid + 1
    end

  end
  return "value not found in the array"
end
