# frozen_string_literal: true

def partition(array, begin_index, end_index)
  pivot = array[end_index]
  j = begin_index
  (begin_index...end_index).each do |i|
    next unless array[i] < pivot
    array[i], array[j] = array[j], array[i]
    j += 1
  end
  array[end_index], array[j] = array[j], array[end_index]
  j
end

def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  if begin_index < end_index
    pivot = partition(array, begin_index, end_index)
    puts array.join(' ')
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9

advanced_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])

advanced_quicksort([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141, 467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171, 86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226, 421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20, 97, 136, 139, 200, 266, 238, 493, 22, 17, 39])
