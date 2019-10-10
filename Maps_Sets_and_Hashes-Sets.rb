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
