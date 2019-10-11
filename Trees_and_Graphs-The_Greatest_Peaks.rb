# frozen_string_literal: true

# mohamed's solution
def get_next(x, y, map)
  col = map[y].length
  row = map.length
  max = map[x][y]
  next_cell = [x, y]

  if (x > 0) && (map[x - 1][y] > max)
    max = map[x - 1][y]
    next_cell = [x - 1, y]
  end

  if (y > 0) && (map[x][y - 1] > max)
    max = map[x][y - 1]
    next_cell = [x, y - 1]
  end

  if (x < row - 1) && (map[x + 1][y] > max)
    max = map[x + 1][y]
    next_cell = [x + 1, y]
  end

  if (y < col - 1) && (map[x][y + 1] > max)
    max = map[x][y + 1]
    next_cell = [x, y + 1]
  end
  return nil if next_cell[0] == x && next_cell[1] == y

  next_cell
end

def dfs(x, y, map)
  local_peak = [x, y]

  loop do
    res = get_next(local_peak[0], local_peak[1], map)
    local_peak = res unless res.nil?
    return local_peak if res.nil?
  end
end

# def dfs(x, y, map)
#   local_peak = [x, y]
#   puts "local_peak value #{local_peak}"
#   # puts "y value #{local_peak[1]}"

#   loop do
#     res = get_next(local_peak[0], local_peak[1], map)
#     local_peak = res unless res.nil?
#     if res.nil?
#       puts "local_peak inner value #{local_peak}"
#       return local_peak
#     end
#   end
# end

def greatest_peaks(map)
  # write your code here
  peaks = Hash.new 0
  map.length.times do |i|
    map[i].length.times do |j|
      peaks[dfs(i, j, map)] += 1
    end
  end
  
  min = nil
  max = nil
  peaks.each do |_key, value|
    min = value if min.nil? || (value < min)
    max = value if max.nil? || (value > max)
  end
  [min, max]
end

p greatest_peaks(
  [
    [9, 8, 5],
    [5, 6, 3],
    [8, 4, 1]
  ]
)
# => [3, 6]

p greatest_peaks(
  [
    [8, 12],
    [9, 3]
  ]
)
# => [1, 3]
