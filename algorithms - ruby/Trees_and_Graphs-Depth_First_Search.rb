# frozen_string_literal: true

def depth_first_search(graph, node = 0, visited = [])
  # write your code here
  return if visited.include?(node)

  visited << node
  graph[node].each { |cur_node| depth_first_search(graph, cur_node, visited) }
  visited
end

# model solution
def depth_first_search(graph)
  # write your code here
  result = []
  stack = [0]
  visited = []

  until stack.empty?
    head = stack.pop
    result << head
    visited << head

    not_visited = graph[head].reject { |node| visited.include? node }

    visited += not_visited
    stack += not_visited.reverse
  end

  result
end

p depth_first_search(
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
)
# => [0, 2, 5, 4, 1, 3]

depth_first_search(0 => [1, 2], 1 => [0, 2], 2 => [0, 1, 3, 4, 5], 3 => [2, 4], 4 => [3, 2], 5 => [2])

depth_first_search(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1], 5 => [2], 6 => [2])

depth_first_search(0 => [3], 1 => [2, 3], 2 => [4, 1], 3 => [1, 0], 4 => [2])

depth_first_search(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1, 5], 5 => [2, 4], 6 => [2])
