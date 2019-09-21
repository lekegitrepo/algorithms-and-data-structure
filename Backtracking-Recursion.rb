def exact_sum?(k, coins)
  #write your code here
  l = coins.length
  return count_func(k, coins, l)
end

def count_func (k, coins, l)
  if  k == 0
    return true
  elsif l == 0 && k != 0
    return false
  elsif coins[l-1] > k
    return count_func(k, coins, l-1)
  else
    return count_func(k, coins, l-1) || count_func(k - coins[l-1], coins, l-1);
  end
end

def exact_sum?(k, coins)
  #write your code here
  return true if k == 0
  return false if coins.empty? || k < 0
  
  exact_sum?(k-coins[0], coins[1..-1]) || exact_sum?(k, coins[1..-1])
end

#puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false

puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])

puts exact_sum?(50, [1, 3, 5, 37, 18, 5])

