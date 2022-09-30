def merge_sort(array, low=0, high=array.length-1)
  if low < high
    mid = low + (high-low) / 2
    merge_sort(array, low, mid)
    merge_sort(array, mid+1, high)
    merge(array, low, mid, high)
  end
  return array
end

def merge(array, low, mid, high)
  first_array, second_array = [], []
  m = mid - low + 1
  n = high - mid

  for i in 0...m
    first_array[i] = array[low + i]
  end

  for i in 0...n
    second_array[i] = array[mid+1 + i]
  end

  i, j = 0, 0

  for k in low..high
    if i >= m                               # si on a fini de fusionner le premier tableau, on copie tout le reste du second tableau
      array[k] = second_array[j]
      j += 1
    elsif j >= n                            # si on a fini de fusionner le second tableau, on copie tout le reste du premier tableau
      array[k] = first_array[i]
      i += 1
    elsif first_array[i] < second_array[j]  # si élément du 1er tableau < à celui du 2d, on l'insère dans le tableau d'origine
      array[k] = first_array[i]
      i += 1
    else                                    # sinon on insère l'élément du 2d
      array[k] = second_array[j]
      j += 1
    end
  end
end

p merge_sort([40, 52, 18, 7, 65, 5, 32, 0, 59])
