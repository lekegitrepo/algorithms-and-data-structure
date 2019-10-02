# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

# helper function
def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if index >= array.length || (array[index]).zero?

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  node
end

# helper function
def height(node)
  # use your function from the previous challenge
  return 0 if tree.nil?
  return 1 if tree.left.nil? && tree.right.nil?

  1 + max(recursive_tree_height(tree.left), recursive_tree_height(tree.right))
end

def balanced_tree?(array)
  root = array_to_tree(array)
  # write your code here
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
