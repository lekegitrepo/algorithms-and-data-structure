# frozen_string_literal: true

def binary_tree_height(array_tree, indx = 0)
  return 0 if indx >= array_tree.length || (array_tree[indx]).zero?

  # write your code here
  1 + max(binary_tree_height(array_tree, 2 * indx + 1), binary_tree_height(array_tree, 2 * indx + 2))
end

def max(num1, num2)
  num1 > num2 ? num1 : num2
end

puts max(4, 5)
puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

binary_tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

binary_tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])

binary_tree_height([1, 2, 3, 4, 0, 5, 6, 7, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0])
