# frozen_string_literal: true

require 'set'

# require 'prime'

# def prime_prime(arr)
#   num = 10000
#   primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
  
#   hash = Hash.new(0)
#   arr.each do |n|
#     primes.each {|p| hash[p] += 1 if n % p == 0}
#   end
#   hash.key(hash.values.max)
# end

def prime_prime(array)
  # write your code here
  hash_factor = Hash.new(0)
  primes = primes_set(10_000)

  #num_primes = array.select { |p| primes.include?(p) }
  #p num_primes

  array.each do |num|
    primes.each { |prim| hash_factor[prim] += 1 if (num % prim).zero? }
  end

  hash_factor.key(hash_factor.values.max)
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

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7

puts prime_prime([6358, 8623, 2345, 1385, 6037, 9161, 796, 8125, 8829, 9747, 2834, 3579, 1043, 1880, 3508, 9822, 8739, 2372, 7723, 5049, 2661, 5982, 9692, 9427, 562, 6617, 3756, 396, 7009, 3907, 6920, 3766, 6139, 6310, 7011, 650, 4758, 5153, 6200, 3146])

puts prime_prime([8035, 6759, 6113, 8721, 5595, 5985, 4643, 849, 629, 8933, 3659, 6086, 4337, 4589, 9119, 8049, 9337, 3407, 28, 6771, 1069, 3500, 8549, 9251, 2131, 5425, 2471, 11, 8173, 5277])

puts prime_prime([1817, 2231, 217, 371, 155, 943, 1219, 553, 679, 1057, 485, 253, 287, 299, 437, 713, 3473])

puts  prime_prime([221, 2787, 121, 169, 6503, 289, 4645])
