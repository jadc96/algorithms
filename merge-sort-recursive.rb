def merge_sort(low, high)
  if low < high
    mid = (low + high) / 2
    merge_sort(low, mid)
    merge_sort(mid+1, high)
    merge(low, mid, high)
  end
end
