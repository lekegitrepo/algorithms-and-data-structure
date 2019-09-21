class Stack
	def initialize
		@arr = Array.new
	end

  def push(number)
    # your code here
    @arr.push(number)
  end
  
  def pop
    # your code here
    @arr.pop
  end
  
  def min
    # your code here
    @arr.min
  end

end

=begin
	class Node
  attr_accessor :value, :next_node, :next_min
 
  def initialize(value, next_node = nil)
      @value = value
    @next_node = next_node
    @next_min = nil
  end
end
class Stack
  def initialize()
    @head=nil
    @min=nil
  end
  def push(number)
    # your code here
    new_node=Node.new(number)
    if @head.nil?
      @head = new_node
      @min = new_node
    else
      new_node.next_node=@head
      @head=new_node
      if new_node.value < @min.value
        new_node.next_min = @min
        @min=new_node
      end
    end
  end
 
  def pop
    # your code here
    node=nil
    if !@head.nil?
      if @head == @min
        @min = @min.next_min
      end
      node = @head
      @head= @head.next_node
    end
    (node.nil?)?nil: node.value
  end
  def min
    # your code here
    return nil if @min.nil?
    @min.value
  end
 
end
=end

=begin
 class Stack #output empty.

  def initialize
    @stack = []
    @min = nil
  end
  
  def push(number)
    # your code here
    @stack << number
  end
  
  def pop
    # your code here
    @stack.pop
  end
  
  def min
    # your code here
    @min
  end

end
=end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3