def merge_sort(array1, array2)
  # write your code here
  comb_arr = array1 + array2
  p comb_arr.min..comb_arr.max
  merg_arr = Array.new(comb_arr.length, 0)
  i = 0
  while i < comb_arr.length
  	merg_arr[comb_arr[i]] = comb_arr[i]
  	i += 1
  end
  # merg_arr.compact
  merg_arr -= [0, nil]
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])
