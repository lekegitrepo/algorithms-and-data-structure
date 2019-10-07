# frozen_string_literal: true

def graph_cycle?(graph)
  # write your code here
  cycle(graph)
end

def cycle(graph, node = 0, visited = [])
  # write your code here
  counter = 0

  return false if graph[node].nil?

  graph[node].each do |cur_node|
    if visited.include?(cur_node)
      counter += 1
      return true if counter == 2
    else
      visited << cur_node
      return true if cycle(graph, cur_node, visited)
    end
  end
  false
end

puts graph_cycle?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts graph_cycle?(
  0 => [2],
  1 => [2],
  2 => [0, 1, 3, 4, 5],
  3 => [2],
  4 => [2]
)
# => false
