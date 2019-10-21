# frozen_string_literal: true

def find_pairs(array, k)
  arr_pairs = []

  (0..(array.length - 1)).each do |i|
    ((i + 1)..(array.length - 1)).each do |j|
      arr_pairs.push(array[i], array[j]) if array[i] + array[j] == k
    end
  end
  arr_pairs.each_slice(2).to_a
end

# model solution
# def find_pairs(array, k)
#   # write your code here
#   pairs = []
#   array.each_with_index do |x, index|
#     array[(index + 1)..-1].each do |y|
#       pairs.push([x, y]) if x + y == k
#     end
#   end
#   pairs
# end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p find_pairs([1, 3, 5, 11], 14)

p find_pairs([8, 17, 5, 11, 9, 6, 3, 2, 15], 21)

p find_pairs([17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40)
