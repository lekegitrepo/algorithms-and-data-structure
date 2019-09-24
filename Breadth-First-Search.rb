# frozen_string_literal: true

def bfs(graph)
  # write your code here
  queue = [0]
  visited = [0]
  result = []
  while queue.any?
    cur_node = queue.shift
    result << cur_node
    graph[cur_node].each do |e|
      next if visited.include?(e)

      queue << e
      visited << e
    end
  end
  result
end

# model solution
def bfs(graph)
  # write your code here
  queue = [0]
  result = []
  visited = []

  until queue.empty?
    head = queue.shift
    result << head
    visited << head

    not_visited = graph[head].reject { |node| visited.include? node }

    visited += not_visited
    queue += not_visited
  end

  result
end

p bfs(
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
)
# => [0, 2, 5, 3, 4, 1]

bfs(0 => [1, 2], 1 => [0, 2], 2 => [0, 1, 3, 4, 5], 3 => [2, 4], 4 => [3, 2], 5 => [2])

bfs(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1], 5 => [2], 6 => [2])

bfs(0 => [3], 1 => [2, 3], 2 => [4, 1], 3 => [1, 0], 4 => [2])

bfs(0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1, 5], 5 => [2, 4], 6 => [2])
