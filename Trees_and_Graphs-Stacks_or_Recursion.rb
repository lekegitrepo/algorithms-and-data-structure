def tree_height(tree_as_list)
  # your code here
  i = 0
  left = 0
  right = 0
  while i < tree_as_list.length
    if [2 * i + 1] != nil
      i = 2 * i + 1
      left += 1
    elsif [2 * i + 2] != nil
      i = 2 * i + 2
      right += 1
    end
  end
  max(left, right)
end

def max(a, b)
  a - b
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
