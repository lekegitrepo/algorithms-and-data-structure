# frozen_string_literal: true

def maximum_time_range(arrray)
  # write your code here
  result = []
  events = arrray.each_slice(2).to_a.sort! { |a, b| a[0] <=> b[0] }
  p events
  result << events[0]
  p result
  print events
  (1...events.size).each do |i|
    top = result.last
    if top[1] < events[i][0]
      result << events[i]
    elsif top[1] < events[i][1]
      top[1] = events[i][1]
      result.pop
      result << top
    end
  end
  if result.size == 1
    result.flatten
  else
    result
  end
end

p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]

p maximum_time_range([11, 12, 4, 7, 14, 16, 0, 2, 13, 15, 8, 10])

p maximum_time_range([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])

p maximum_time_range([5, 14, 1, 4, 13, 19, 3, 6, 9, 18])
