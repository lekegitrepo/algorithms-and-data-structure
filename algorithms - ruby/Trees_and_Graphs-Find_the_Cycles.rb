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

# model solution
def graph_cycle?(graph)
  # write your code here
  queue = [0]
  visited = []

  until queue.empty?
    head = queue.shift
    visited << head

    not_visited = graph[head].reject { |node| visited.include? node }
    return true if not_visited.size < (graph[head].size - 1)

    visited += not_visited
    queue += not_visited
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

puts graph_cycle?(0 => [1, 2], 1 => [0, 2], 2 => [0, 1, 3, 4, 5], 3 => [2, 4], 4 => [3, 2], 5 => [2])

puts graph_cycle?(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1], 5 => [2], 6 => [2])

puts graph_cycle?(0 => [2], 1 => [4, 3], 2 => [0, 5], 3 => [5, 1], 4 => [1], 5 => [2, 3])
