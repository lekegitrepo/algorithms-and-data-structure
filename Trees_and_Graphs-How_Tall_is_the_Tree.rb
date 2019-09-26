def binary_tree_height(array_tree, i = 0)
	return nil if i >= array_tree.length
  # write your code here
  1 + Math.max(binary_tree_height(array_tree, 2*i+1), binary_tree_height(array_tree, 2*i+2))
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
