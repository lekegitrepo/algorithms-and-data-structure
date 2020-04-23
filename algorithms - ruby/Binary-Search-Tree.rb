# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def initialize(root = nil)
    @root = nil
  end

  def insert(node, parent = @root)
    # your code here
    return @root = node if @root.nil?

    return node if parent.nil?

    if node.data < parent.data
      parent.left = insert(node, parent.left)
    elsif node.data > parent.data
      parent.right = insert(node, parent.right)
    end
    return parent
  end

  def pre_order(node = @root)
    # implementation from the previous challenge
    return '' if node.nil?

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts 'Running binary_search_tree'
puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
