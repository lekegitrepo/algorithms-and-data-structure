# frozen_string_literal: true

require 'set'

def number_of_primes(arr)
  # write your code here
  set_of_primes = primes_set(10_000)
  num_primes = arr.select { |p| set_of_primes.include?(p) }
  num_primes.length
end

def primes_set(max)
  primes = Set.new
  nums = Array.new(max + 1, 1)
  nums[0] = nums[1] = 0

  (2..Math.sqrt(max)).each do |sieve|
    next unless nums[sieve] == 1

    (2 * sieve).step(max, sieve).each do |num|
      nums[num] = 0
    end
  end
  (2..max).select do |num|
    primes << num if nums[num] == 1
  end
  primes
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3
