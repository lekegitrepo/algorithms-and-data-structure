# frozen_string_literal: true

def insertion_sort(arr)
  i = 0
  while i < arr.length
    curr_indx = i
    curr_value = arr[i]
    while curr_indx.positive? && arr[curr_indx - 1] > curr_value
      arr[curr_indx] = arr[curr_indx - 1]
      curr_indx -= 1
    end
    arr[curr_indx] = curr_value
    i += 1
  end
  arr
end

p insertion_sort([4, 2, 7, 1, 3])
