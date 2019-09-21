# frozen_string_literal: true

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

# def in_order(node)
#   # your code here
#   return '' if node.nil?
#     result += post_order(node.left)
#     result = "#{node.data} "
#     result += post_order(node.right)
# end
def pre_order(node)
  return '' if node.nil?

  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
end
# def post_order(node)
#   # your code here
#   node.nil? ? '' : "#{post_order(node.left)}#{post_order(node.right)} #{node.data}"
# end

def post_order(node)
  # your code here
  return '' if node.nil?

  result = post_order(node.left)
  result += post_order(node.right)
  result += "#{node.data} "
end

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
puts pre_order(tree)
# puts in_order(tree)
puts post_order(tree)
#=> 3 4 1 5 6 2 10

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
puts post_order(tree)

tree = array_to_tree([2, 7, 5, 2, 6, 0, 9], 0)
puts post_order(tree)

tree = array_to_tree([1, 2, 3, 4, 5, 6, 7, 8, 9], 0)
puts post_order(tree)

tree = array_to_tree([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0], 0)
puts post_order(tree)
