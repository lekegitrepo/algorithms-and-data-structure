
def sliding_maximum(k, array)
  # your code here
  max_arr = Array.new
  slide_index = array.index(array.at(-k))
  i = 0

  while i <= slide_index do
  	max_arr.push(array.slice(i, k).max) #max_arr << array.slice(i, k).max
  	i += 1
  end
  max_arr
end

#Teacher's solution
def sliding_maximum(k, array)
  # your code here
  array.each_cons(k).map(&:max)
end

max = sliding_maximum(3, [1, 3, 5, 7, 9, 2])
puts max
# => [5, 7, 9, 9]