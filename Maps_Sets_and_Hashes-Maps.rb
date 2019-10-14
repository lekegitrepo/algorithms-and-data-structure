# frozen_string_literal: true

def appears_most_times(array)
  # write your code here
  hash_map = {}

  array.each do |item|
    hash_map.key?(item) ? hash_map[item] += 1 : hash_map[item] = 1
  end
  hash_map.key(hash_map.values.max)
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376])
# => 4376

puts appears_most_times([2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490])

puts appears_most_times([85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111])

puts appears_most_times([10, 10, 20, 30, 20, 20])

puts appears_most_times([3, 2, 19, 4, 19, 19, 3, 2])

puts appears_most_times([3594976, 2340, 3594976, 74390, -453894, 32076, 42, 7888, -21085, -320566])
