def full_counting_sort_prep(array)
  # write your code here
  arr_stg = array.map { |x| x[/\d+/] }
  arr_int = arr_stg.map(&:to_i)
  result = []

  (0..99).each do |i|
    count = 0
    arr_int.each { |j| count += 1 if j <= i }
    result << count
  end
  result
end

p full_counting_sort_prep(
  [
    '4 that', '3 be', '0 to', '1 be', '5 question',
    '1 or', '2 not', '4 is', '2 to', '4 the'
  ]
)

# => [1, 3, 5, 6, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
# 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
# 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
# 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
# 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
# 10, 10, 10, 10]
