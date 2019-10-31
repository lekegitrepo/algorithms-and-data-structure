# frozen_string_literal: true

def full_counting_sort(array)
  # write your code here
  hash = {}

  ar = array.map do |el|
    i, s = el.split(' ')
    hash.key?(i) ? hash[i] << s : hash[i] = [s]
    i.to_i
  end

  ar = counting_sort(ar)
  output = []
  i = 0
  while i < ar.length
    output << hash[i.to_s] if (ar[i]).positive?
    i += 1
  end
  output.flatten
end

def counting_sort(array)
  # write your code here
  arr_counter = Array.new(array.max + 1, 0)
  array.each { |arr| arr_counter[arr] += 1 }
  arr_counter
end

p full_counting_sort(
  [
    '0 ab', '6 cd', '0 ef', '6 gh', '4 ij', '0 ab', '6 cd',
    '0 ef', '6 gh', '0 ij', '4 that', '3 be', '0 to', '1 be',
    '5 question', '1 or', '2 not', '4 is', '2 to', '4 the'
  ]
)
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
