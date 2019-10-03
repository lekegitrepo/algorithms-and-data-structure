# frozen_string_literal: true

def connected_graph?(graph)
  # write your code here
  connected = []
  depth_first_search(graph, 0, connected)
  p connected
  connected.length == graph.keys.length
end

def depth_first_search(graph, node = 0, visited = [])
  # write your code here
  return if visited.include?(node)

  visited << node
  p graph[node].each { |cur_node| depth_first_search(graph, cur_node, visited) }
end

puts connected_graph?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts connected_graph?(
  0 => [1, 2],
  1 => [0, 2],
  2 => [0, 1, 3, 4, 5],
  3 => [2, 4],
  4 => [3, 2],
  5 => [2]
)
# => true

connected_graph?(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1], 5 => [2], 6 => [2])

connected_graph?(0 => [1], 1 => [0, 3, 4], 2 => [5, 6], 3 => [1], 4 => [1], 5 => [2], 6 => [2])

connected_graph?(0 => [2], 1 => [4], 2 => [0], 3 => [5], 4 => [5, 1], 5 => [4, 3])

connected_graph?(0 => [1, 2], 1 => [0, 4], 2 => [0, 4], 3 => [5, 6], 4 => [1, 2, 7], 5 => [3], 6 => [3], 7 => [4])
