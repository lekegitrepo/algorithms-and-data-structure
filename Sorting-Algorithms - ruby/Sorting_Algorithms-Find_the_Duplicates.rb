def duplicates(arr1, arr2)
  # write your code here
  for i in arr1
    if arr2.include?(i)
      arr2.delete_at(arr2.index(i))
    end
  end
  arr2.sort
end

p duplicates(
   [203, 204, 205, 206, 207, 208, 203, 204, 205, 206],
   [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206]
  )
# => [204, 205, 206]

p duplicates(
  [10, 3, 17, 11, 5, 10, 3, 9, 11, 33, 41, 22, 8, 17, 3, 11, 35, 52, 73, 88],
  [22, 3, 10, 11, 33, 41, 11, 5, 3, 17, 10, 3, 9, 11, 52, 73, 88, 35, 10, 11, 3, 8, 17, 8]
  )
# => [10, 3, 11, 8]

p duplicates([3696, 3739, 3714, 3719, 3687, 3732, 3657, ..., 3654, 3741, 3731],
  [3697, 3674, 3700, 3652, 3702, 3718, 3693, ..., 3675, 3672, 3737])
