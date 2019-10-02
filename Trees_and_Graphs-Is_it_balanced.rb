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

def max(num1, num2)
  num1 > num2 ? num1 : num2
end

# helper function
def height(node)
  # use your function from the previous challenge
  return 0 if node.nil?
  return 1 if node.left.nil? && node.right.nil?

  1 + max(height(node.left), height(node.right))
end

def balanced?(node)
  return true if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)

  return false if (left_height - right_height).abs > 1

  balanced?(node.left) && balanced?(node.right)
end

def balanced_tree?(array)
  root = array_to_tree(array)
  # write your code here
  balanced?(root)
end

# model solution
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def recursive_tree_height(tree)
  return 0 if tree.nil?
  return 1 if tree.left.nil? && tree.right.nil?

  [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
end

def balanced_tree?(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)

  balanced_tree_recursive?(tree)
end

def balanced_tree_recursive?(tree)
  return true if tree.nil? || (tree.left.nil? && tree.right.nil?)

  balanced_tree_recursive?(tree.left) &&
    balanced_tree_recursive?(tree.right) &&
    (recursive_tree_height(tree.left) - recursive_tree_height(tree.right)).abs <= 1
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7])

puts balanced_tree?([1, 2, 3, 0, 0, 4, 5, 0, 0, 0, 0, 6, 0, 7, 8])
