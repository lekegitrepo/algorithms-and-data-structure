# frozen_string_literal: true

require 'set'

def find_duplicates(arr)
  s = Set.new
  arr.reject { |e| s.add?(e) }
end

# def find_a_dup_using_set(arr)
#   s = Set.new
#   arr.select { |e| !s.add?(e) }
# end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]

p find_duplicates([3, 443, 67, 25, 501, 917, 23, 888, -402, 235, 377, 99, 311, 443, 1])

p find_duplicates([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509])

p find_duplicates([2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490])

p  find_duplicates([85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111])

