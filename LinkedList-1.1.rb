# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  # setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    # your code here
    node = Node.new(number)
    @head ? (@tail.next_node = node) : (@head = node)
    @tail = node
  end

  def get(index)
    # your code here
    if index.negative?
      nil
    else
      node = @head
      index.times { node = node.next_node }
      node.value
    end
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
