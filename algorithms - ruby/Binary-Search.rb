def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  min = min_interval
  max = max_interval
  middle = (min + max) / 2

  if middle * middle == number
  	return middle
  else
  	if middle * middle < number
  		min = middle + 1
  	elsif (middle * middle) > number
  		max = middle - 1	
  	end
  	sqrt_recursive(number, min, max)
  end
end

puts sqrt(25)
puts sqrt(7056)
