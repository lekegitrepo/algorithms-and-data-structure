# Loop example.

# make some random rocks
rocks = 30.times.map{rand(200) + 1}
puts rocks.join(', ')
max_rock = 0

rocks.each do |rock|
  max_rock = rock if max_rock < rock 
end

puts "Heaviest rock is: #{max_rock}"

## or with inject
puts "Heaviest rock is: #{rocks.inject{|max_rock, rock| max_rock > rock ? max_rock : rock}}"

# Recursion
def rock_judger(rocks_arr)    
    if rocks_arr.length <= 2  # the base case
      a = rocks_arr[0]
      b = rocks_arr[-1]
    else
      a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
      b = rock_judger(rocks_arr)
    end    
    
    return a > b ? a : b
end

 
rocks = 30.times.map{rand(200) + 1}
puts rocks.join(', ')
puts "Heaviest rock is: #{rock_judger(rocks)}"


def rock_judger(r_arr)     
    count = r_arr.length
    a,b =  count <= 2 ? [r_arr[0], r_arr[-1]] : [rock_judger(r_arr.pop(count/2)), rock_judger(r_arr)]
    return a > b ? a : b
end

