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

# model solution
def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  i = 0
  j = 0

  while i < array1.size && j < array2.size
    if array1[i] < array2[j]
      sorted_array << array1[i]
      i += 1
    else
      sorted_array << array2[j]
      j += 1
    end
  end

  sorted_array.concat(array1[i..-1]) if i < array1.size

  sorted_array.concat(array2[j..-1]) if j < array2.size

  sorted_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])

p merge_sort([-4, -3, -1, 1, 3], [0, 5, 7, 9, 11])

p merge_sort([-91, -4, 42, 121, 265, 530], [-623, -54, -7, 651, 721, 850])

p merge_sort([21, 32, 45, 62, 71, 83], [1, 3, 4, 7, 9, 12])
