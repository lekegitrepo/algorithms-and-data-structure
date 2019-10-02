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

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7])

puts balanced_tree?([1, 2, 3, 0, 0, 4, 5, 0, 0, 0, 0, 6, 0, 7, 8])
