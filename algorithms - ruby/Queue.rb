class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
  	@value = value
  	@next_node = next_node
  end
end

class Queue
  def initialize()
  	@head
  	@tail
  end
  def add(number)
    # your code here
    node = Node.new(number)
    @head ? (@tail.next_node = node) : (@head = node)
    @tail = node
  end
  
  def remove
    # your code here
    del = -1
    if @head != nil
    	del = @head.value
    	@head = @head.next_node 	
    end
    del
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1