def recursive_binary_search(array, low, high, key)
  if low == high
    if array[low] == key
      return low
    else
      return "value not found"
    end
  else
    mid = ((low + high) / 2).floor
    if array[mid] == key
      return mid
    elsif key < array[mid]
      return recursive_binary_search(array, low, mid-1, key)
    else
      return recursive_binary_search(array, mid+1, high, key)
    end
  end
end
