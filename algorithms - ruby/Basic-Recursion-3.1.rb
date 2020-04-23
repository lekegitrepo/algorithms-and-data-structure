def sum(number)
  # Your code here
  return number <= 1 ? 1 : (number + sum(number - 1))
end

# Teacher's Solution
def sum(number)
  # Your code here
  if number == 1
		number
	else
		number + sum(number - 1)
  end
end