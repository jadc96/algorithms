def linear_search(array, key)
  low = 0
  high = array.length - 1

  for i in (low..high)
    return "element at index #{i}" if array[i] == key
  end
  return "element not found"
end
