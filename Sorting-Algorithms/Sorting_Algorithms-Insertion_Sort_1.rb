# frozen_string_literal: true

def insertion_sort(array)
  # write your code here
  puts "#{array}"
  arr_size = array.length
  i = 0
  while i < arr_size
    curr_val = array[i]
    k = i
    while k.positive? && array[k - 1] > curr_val
      array[k] = array[k - 1]
      puts array.join(' ')
      k -= 1
    end
    array[k] = curr_val
    i += 1
  end
  puts array.join(' ')
  array
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
