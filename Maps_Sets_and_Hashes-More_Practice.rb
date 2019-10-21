# frozen_string_literal: true

def find_pairs(array, k)
  resut = []

  (0..(array.length - 1)).each do |i|
    ((i + 1)..(array.length - 1)).each do |j|
      resut.push(array[i], array[j]) if array[i] + array[j] == k
    end
  end
  resut.each_slice(2).to_a
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p  find_pairs([1, 3, 5, 11], 14)
