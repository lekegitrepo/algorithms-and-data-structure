# frozen_string_literal: true

# def sort_itself(array)
#   sort = []
#   sort << array.shift
#   array.each do |i|
#     final_index = 0
#     while final_index < sort.length
#       if i <= sort[final_index]
#         sort.insert(final_index, i)
#         puts "#{sort}"
#         break
#       elsif final_index == sort.length - 1
#         sort.insert(final_index + 1, i)
#         puts "#{sort}"
#         break
#       end
#       final_index += 1
#     end
#   end
#   sort
# end

# def sort_itself(array)
#   (1..array.length - 1).each do |i|
#     curr_val = array[i]
#     j = i - 1
#     while j >= 0 && array[j] > curr_val
#       array[j + 1] = array[j]
#       puts array.join(' ')
#       j -= 1
#     end
#     array[j + 1] = curr_val
#   end
#   puts array.join(' ')
#   array
# end

def sort_itself(array)
  n = array.length - 1
  (1..n).each do |i|
    value = array[i]
    j = i
    while j >= 0 && array[j - 1] > value
      array[j] = array[j - 1]
      j -= 1
    end
    array[j] = value
    puts array.join(' ')
  end
  array
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
