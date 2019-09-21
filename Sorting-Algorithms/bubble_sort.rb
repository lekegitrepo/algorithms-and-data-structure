# frozen_string_literal: true

def bubble_sort(arr_list)
  n = arr_list.length
  loop do
    swapped = false
    (n - 1).times do |a|
      if arr_list[a] > arr_list[a + 1]
        arr_list[a], arr_list[a + 1] = arr_list[a + 1], arr_list[a]
        swapped = true
      end
    end
    break unless swapped
  end
  arr_list
end

arr = [3, 2, 6, 2, 1, 6, 0, 16]
p bubble_sort(arr)

def bubble_sort_by(arr)
  n = arr.length - 1
  loop do
    swapped = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
