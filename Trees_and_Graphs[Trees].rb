# frozen_string_literal: true

def leftmost_nodes_sum(array)
  # your code here
  i = 0
  parent = array[i]
  while i < array.length
    i = 2 * i + 1
    parent += array[i] if i < array.length
  end
  parent
end

=begin
def leftmost_nodes_sum(array)
  # your code here
  i = 0
  sum = 0
  exp = 2**i - 1

  while exp < array.size
    sum += array[exp]
    i += 1

    exp = 2**i - 1
  end

  sum
end
=end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

puts leftmost_nodes_sum([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
