# frozen_string_literal: true

#this method works.
# def binary_tree_height(array_tree, indx = 0)
#   return 0 if indx >= array_tree.length || (array_tree[indx]).zero?

#   # write your code here
#   1 + max(binary_tree_height(array_tree, 2 * indx + 1), binary_tree_height(array_tree, 2 * indx + 2))
# end

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def binary_tree_height(array_tree)
  tree_node = array_to_tree(array_tree)
  recursive_tree_height(tree_node)
end

def recursive_tree_height(tree)
  return 0 if tree.nil?
  return 1 if tree.left.nil? && tree.right.nil?

  1 + max(recursive_tree_height(tree.left), recursive_tree_height(tree.right))
end

def max(num1, num2)
  num1 > num2 ? num1 : num2
end

def array_to_tree(array, indx = 0)
  return nil if indx >= array.length || (array[indx]).zero?

  node = Node.new(array[indx])
  node.left = array_to_tree(array, 2 * indx + 1)
  node.right = array_to_tree(array, 2 * indx + 2)

  node
end

# model solution
# class Node
#   attr_reader :data
#   attr_accessor :left, :right

#   def initialize(data)
#     @data = data
#   end
# end

# def array_to_tree(array, i)
#   return nil if i >= array.length || array[i] == 0

#   node = Node.new(array[i])
#   node.left = array_to_tree(array, 2 * i + 1)
#   node.right = array_to_tree(array, 2 * i + 2)

#   node
# end

# def binary_tree_height(array_tree)
#   # write your code here
#   tree = array_to_tree(array_tree, 0)
#   recursive_tree_height(tree)
# end

# def recursive_tree_height(tree)
#   return 0 if tree.nil?
#   return 1 if tree.left == nil && tree.right == nil
#   [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
# end

# Test cases
puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

binary_tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

binary_tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])

binary_tree_height([1, 2, 3, 4, 0, 5, 6, 7, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0])
