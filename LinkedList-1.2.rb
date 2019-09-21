# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize()
    @head
    @tail
  end
  
  def add(number)
    node = Node.new(number)
    @head ? (@tail.next_node = node) : (@head = node)
    @tail = node
  end
  
  def get(index)
    if index < 0
      return nil
    else
      node = @head
      index.times {node = node.next_node}
      node.value
    end
  end
    
    def add_at(index, item)
      new_node=Node.new(item)
      if index ==0
        new_node.next_node = @head
        @head=new_node
      else
        ant_node=get_node(index-1)
        new_node.next_node=ant_node.next_node
        ant_node.next_node=new_node
        @tail = new_node if new_node.next_node.nil?
      end
    end
    
    def remove(index)
      target=get_node(index)
      if index ==0 
        @head = target.next_node
        @tail=nil if @head.nil?
      else 
        ant_node=get_node(index-1)
        ant_node.next_node=target.next_node
        @tail = ant_node if  @tail==target
      end
    end
    
    private def get_node(index)
        node = @head
        if node.next_node != nil
          index.times { node = node.next_node}
        else
          return nil
        end
        node
    end
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
puts list.get(0)