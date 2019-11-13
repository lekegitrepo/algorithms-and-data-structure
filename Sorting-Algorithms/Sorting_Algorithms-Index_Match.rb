# frozen_string_literal: true

def index_match(array)
  # write your code here
  array.each_index.select do |index|
    if array[index] == index
      spot = array[index]
      return spot
    end
  end
  -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
