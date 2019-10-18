# frozen_string_literal: true

# mohammed's solution
def get_next(x, y, maze)
  rows = maze[x].length
  cols = maze[y].length
  next_node = []
  next_node << [x + 1, y] if x < rows - 1 && maze[x + 1][y] != 1
  next_node << [x, y + 1] if y < cols - 1 && maze[x][y + 1] != 1
  next_node
end

def search_path(x, y, maze, path)
  return path if maze[x][y] == 9

  next_nodes = get_next(x, y, maze)
  next_nodes.each do |coors|
    # p "coordinates: #{coors} X #{coors[0]}  Y #{coors[1]}"
    p path
    path << [coors[1], coors[0]]
    res = search_path(coors[0], coors[1], maze, path)
    return path unless res.nil?

    path.pop
  end
  nil
end

def maze_escape(maze)
  # write your code here
  search_path(0, 0, maze, [[0, 0]])
end

p maze_escape(
  [
    [0, 0, 0, 0, 0],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 1],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 1, 9]
  ]
)
