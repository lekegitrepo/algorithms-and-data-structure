# frozen_string_literal: true

class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    [*left.quicksort, pivot, *right.quicksort]
  end
end

arr = 30.times.map { rand(1..200) }
puts arr.join(', ')
p arr.quicksort
