def median(array)
  # write your code here
  partition(array, 0, array.length - 1)
  array[array.length / 2]
end

def partition(array, begin_index, end_index)
  return if begin_index >= end_index

  pivot = array[end_index]
  j = begin_index
  (begin_index...end_index).each do |i|
    next unless array[i] < pivot
    array[i], array[j] = array[j], array[i]
    j += 1
  end
  array[end_index], array[j] = array[j], array[end_index]
  if j > array.length / 2
    partition(array, begin_index, j - 1)
  else
    partition(array, j + 1, end_index)
  end
end

puts median([0, 1, 2, 4, 6, 5, 3])
# => 3
