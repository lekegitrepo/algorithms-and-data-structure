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
