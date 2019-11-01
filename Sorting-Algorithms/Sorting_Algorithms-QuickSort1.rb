def partition(array)
  # write your code here
  pivot = array[0]
  left = []
  right = []
  i = 0
  while i < array.length
    if pivot > array[i]
      left << array[i]
    else
      right << array[i]
    end
    i += 1
  end
  left + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
