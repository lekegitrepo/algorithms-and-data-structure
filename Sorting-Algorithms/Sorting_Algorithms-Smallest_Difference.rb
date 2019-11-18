def smallest_difference(array)
  # write your code here
  sorted_arr = array.sort
  small_diff_pair = []
  diff = array.max
  i = 0
  while i < array.length - 1
    if (sorted_arr[i + 1] - sorted_arr[i]) < diff
      p diff
      diff = (sorted_arr[i + 1] - sorted_arr[i])
      small_diff_pair << [sorted_arr[i], sorted_arr[i + 1]]
    end
    i += 1
  end
  small_diff_pair[-1]
end

p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]
