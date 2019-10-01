# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if index >= array.length || (array[index]).zero?

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  node
end

def search_tree?(array)
  root = array_to_tree(array)
  # write your code here
  search(root)
end

def search(node, min = nil, max = nil)
  return true if node.nil?

  return false if min && node.data < min

  return false if max && node.data > max

  search(node.left, min, node.data) && search(node.right, node.data, max)
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

def search_tree?(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)

  in_order_array = in_order(tree)

  in_order_array == in_order_array.sort
end

def in_order(node)
  return [] if node.nil?

  result = in_order(node.left)
  result << node.data
  result += in_order(node.right)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false

puts search_tree?([20, 10, 27, 12, 14, 23, 30])

puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])

puts search_tree?([19, 9, 26, 4, 13, 17, 29])

puts search_tree?([20, 10, 27, 5, 14, 23, 30, 0, 12, 0, 0, 0, 0, 0, 0])
