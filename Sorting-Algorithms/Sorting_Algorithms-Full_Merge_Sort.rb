def full_merge_sort(array)
  # write your code here
  array = merge_sort(array)
  result = []
  array.each do |element|
    result << get_string(element)
  end
  result
end

def merge_sort(array)
  return array if array.length == 1

  mid = (array.length / 2).floor
  left = merge_sort(array[0..mid - 1])
  right = merge_sort(array[mid..array.length])

  sorted_array = []

  while !left.empty? || !right.empty?
    sorted_array << left.shift if (right.empty? && !left.empty?) ||
    (!left.empty? && (get_index(left.first) <= get_index(right.first)))

    sorted_array << right.shift if (left.empty? && !right.empty?) ||
    (!right.empty? && (get_index(left.first) > get_index(right.first)))
  end
  sorted_array
end

def get_index(string)
  string.split(' ').first.to_i
end

def get_string(string)
  string.split(' ').last
end

full_merge_sort(['0 ab', '6 cd', '0 ef', '6 gh', '4 ij', '0 ab', '6 cd', '0 ef', '6 gh', '0 ij', '4 that', '3 be', '0 to', '1 be', '5 question', '1 or', '2 not', '4 is', '2 to', '4 the'])
# => ['ab', 'ef', 'ab', 'ef', 'ij', 'to', 'be', 'or', 'not', 'to', 'be', 'ij', 'that', 'is', 'the', 'question', 'cd', 'gh', 'cd', 'gh']
