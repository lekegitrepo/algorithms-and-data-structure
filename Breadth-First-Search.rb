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

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]