# frozen_string_literal: true

def simple_quicksort(array)
  # write your code here
  return array if array.length < 2

  pivot = array[0]
  left = []
  right = []
  i = 1

  while i < array.length
    if pivot > array[i]
      left << array[i]
    else
      right << array[i]
    end
    i += 1
  end
  left = simple_quicksort(left)
  right = simple_quicksort(right)
  sort_arr = left + [pivot] + right
  puts sort_arr.join(' ')
  sort_arr
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
