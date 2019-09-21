class Node
	attr_accessor :value, :next_node
	def initialize(value, next_node = nil)
		@value = value
		@next_node = next_node
	end
end

class Stack
	def initialize()
		@head = nil		
	end

	def push(number) #a minor error
		new_node = Node.new(number)
		#new_node.next_node = @head if !@head == nil
		@head ? (new_node.next_node = @head) : (@head = new_node)
		@head = new_node
	end

	

	def pop
	    # your code here
	    node = nil
	    if !@head.nil?
	      node = @head
	      @head = @head.next_node
	    end
	    (node.nil?) ? nil : node.value
	end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3

=begin
class Stack
  def initialize()
    @head=nil
  end
  def push(number)
    # your code here
    new_node=Node.new(number)
    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end
  
  def pop
    # your code here
    node=nil
    if !@head.nil?
      node =@head
      @head= @head.next_node
    end
    (node.nil?)?nil: node.value
  end
end
=end