def merge_sort(a, b, m, n)
i, j, k = 0, 0, 0
c = []

  while (i <= m && j <= n)
    if a[i] < b[j]
      c[k] = a[i]
      k += 1
      i += 1
    else
      c[k] = b[j]
      k += 1
      j += 1
    end
  end

  for i in
end
