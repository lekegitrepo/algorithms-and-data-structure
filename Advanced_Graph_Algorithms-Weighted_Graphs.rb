def weighted_graphs(matrix)
  # write your code here
  result = Array.new(matrix.length, 0)
  queue = [[0, 0]]
  queue.each do |node|
    distance = node[1]
    p "#{node} #{distance}"
    children = get_children(node[0], matrix)
    p "children: #{children}"
    children.each do |child|
      next unless queue.none? { |curr_node| curr_node[0] == child }

      result[child] = distance + 1
      p "result #{result}"
      queue.append([child, distance + 1])
      p "queue #{queue}"
    end
  end
  result
end

def get_children(index, matrix)
  i = 0
  result = []
  while i < matrix.length
    result << i if (matrix[index][i]).positive?

    i += 1
  end
  result
end

p weighted_graphs(
  [
    [0, 0, 1, 3, 0, 0],
    [0, 0, 0, 5, 0, 0],
    [1, 0, 0, 2, 1, 4],
    [3, 5, 2, 0, 7, 0],
    [0, 0, 1, 7, 0, 2],
    [0, 0, 4, 0, 2, 0]
  ]
)
# => [0, 2, 1, 1, 2, 2]

weighted_graphs([[0, 3, 5], [3, 0, 1], [5, 1, 0]])

weighted_graphs([[0, 3, 6, 0, 0, 9, 4], [3, 0, 4, 1, 0, 0, 0], [6, 4, 0, 3, 5, 4, 1], [0, 1, 3, 0, 2, 0, 0], [0, 0, 5, 2, 0, 3, 0], [9, 0, 4, 0, 3, 0, 3], [4, 0, 1, 0, 0, 3, 0]])

weighted_graphs([[0, 3, 6, 0, 0, 9, 4, 1, 0, 0], [3, 0, 4, 1, 0, 0, 0, 1, 2, 0], [6, 4, 0, 3, 5, 4, 1, 1, 3, 0], [0, 1, 3, 0, 2, 0, 0, 1, 4, 0], [0, 0, 5, 2, 0, 3, 0, 1, 3, 1], [9, 0, 4, 0, 3, 0, 3, 1, 2, 0], [4, 0, 1, 0, 0, 3, 0, 1, 1, 0], [1, 1, 1, 1, 1, 1, 1, 0, 1, 0], [0, 2, 3, 4, 3, 2, 1, 1, 0, 0], [0, 0, 0, 0, 1, 0, 0, 0, 0, 0] ]))
