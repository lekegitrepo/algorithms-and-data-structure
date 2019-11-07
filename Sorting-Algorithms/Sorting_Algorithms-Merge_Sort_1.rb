# frozen_string_literal: true

# my mentor's solution
def merge_sort(array1, array2)
  # write your code here
  sorted_arr = []
  until array1.empty? || array2.empty?
    sorted_arr << (array1[0] < array2[0] ? array1.shift : array2.shift)
  end
  sorted_arr + array1 + array2
end

# def merge_sort(array1, array2)
#   # write your code here
#   sorted_arr = []
#   until array1.empty? || array2.empty?
#     sorted_arr << if array1[0] < array2[0]
#                     array1.shift
#                   else
#                     array2.shift
#                   end
#   end
#   sorted_arr + array1 + array2
# end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])
