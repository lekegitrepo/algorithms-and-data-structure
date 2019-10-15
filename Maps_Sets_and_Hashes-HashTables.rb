# frozen_string_literal: true

def hash_table(arr)
  # write your code here
  hash_keys = []
  arr.each do |item|
    key = item.abs % 11
    hash_keys[key] = hash_keys[key].nil? ? item : [hash_keys[key]].push(item)
  end
  hash_keys.flatten!
  hash_keys -= [nil]
end

# def hash_table(arr)
#   # write your code here
#   arr.sort_by{|i| i.abs % 11}
# end

# def hash_table(arr)
#   # write your code here
#   hash_keys = []
#   arr.each do |key|
#     h_key = key.abs % 11
#      if hash_keys[h_key].nil?
#       hash_keys[h_key] = key
#     else
#       hash_keys[h_key] = [hash_keys[h_key]].push(key)
#      end
#   end
#   hash_keys
# end

# model solution
def hash_table(array)
  # write your code here
  fake_hash = []
  array.each do |element|
    key = element.abs % 11
    if fake_hash[key]
      fake_hash[key] << element
    else
      fake_hash[key] = [element]
    end
  end
  fake_hash.compact.flatten
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234_004, 602, 7_400_000, 200_000_000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]

p hash_table([2367, -65_325, 134, -185_007, 3291, 7832, -65_326, 789, 980, -3289, 3])

p hash_table([4376, -345, -342, 4376, -345, 84_945, 4376, -347, -26_509, 4376, 84_945, 84_944, -26_509, 896_341, 4376])

p hash_table([10_935, 12_732, -3058, 1673, 14_971, 5701, 18_342, 4590, -10_248, -11_243, -5848, 14_836, 7648, -3772, -8700, 19_165, -16_397, -13_192, -18_946, 14_203])
