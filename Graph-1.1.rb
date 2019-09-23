# frozen_string_literal: true

def graph(hash_graph)
  # write your code here
  path(hash_graph, hash_graph.keys.first, [])
end

def path(hash, key, visited)
  visited.push(key)
  return visited if key.equal? 4

  path(hash, hash[key].first, visited)
end

# model solution
def graph(hash_graph)
  # write your code here
  next_node = 0
  result = [0]
  while next_node != 4
    next_node = hash_graph[next_node].first
    result << next_node
  end
  result
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]

graph({ 0 => [2], 1 => [4], 2 => [5, 0, 3], 3 => [2], 4 => [1, 5], 5 => [4, 2] })

graph({ 0 => [1, 2], 1 => [2, 0], 2 => [3, 0, 1, 4, 5], 3 => [4, 2], 4 => [3, 2], 5 => [2] })

graph({ 0 => [1, 6], 1 => [2, 0, 3, 4], 2 => [3, 1], 3 => [6, 1, 2], 4 => [1, 5, 6], 5 => [4], 6 => [4, 3, 0] })

graph({ 0 => [3], 1 => [2, 3], 2 => [4, 1], 3 => [1, 0], 4 => [2] })

graph({ 0 => [1, 6], 1 => [2, 0, 3, 4], 2 => [7, 3, 1], 3 => [6, 1, 2], 4 => [1, 5, 7], 5 => [4, 6], 6 => [3, 0, 5], 7 => [4, 2] })
