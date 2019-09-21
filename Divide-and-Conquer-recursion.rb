#comparing highest between two values.
# def divide_and_conquer (arr)
# 	a,b = arr.length <= 2 ? [arr[0], arr[-1]] : 
# 	[divide_and_conquer(arr.slice!(0, arr.length/2)), 
# 		divide_and_conquer(arr)]
# 	return a > b ? a : b
# end

def divide_and_conquer (arr)
	if arr.length <= 2
	   a = arr[0]
	   b = arr[-1]
	else
		a = divide_and_conquer(arr.pop(arr.length/2))
		b = divide_and_conquer(arr)
	end
	return a > b ? a : b
end


values = 30.times.map{rand(200) + 1}
puts values.join(', ')
#values = [3, 2, 5, 6, 78, 89, 190, 24, 98, 200]
puts "highest value is: #{divide_and_conquer(values)}"

# def rock_judger(r_arr)     
#     count = r_arr.length
#     a,b =  count <= 2 ? [r_arr[0], r_arr[-1]] : [rock_judger(r_arr.pop(count/2)), 
#     	rock_judger(r_arr)]
#     return a > b ? a : b
# end

# def rock_judger(rocks_arr)    
#     if rocks_arr.length <= 2  # the base case
#       a = rocks_arr[0]
#       b = rocks_arr[-1]
#     else
#       a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
#       b = rock_judger(rocks_arr)
#     end    
    
#     return a > b ? a : b
# end

#rocks = 30.times.map{rand(200) + 1}
#puts rocks.join(', ')
#puts "Heaviest rock is: #{rock_judger(rocks)}"

