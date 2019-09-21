def move(starting, goal)
  # your code here
  diskTo = (1..3).find { |i| i != starting && i != goal}
  "#{starting}->#{diskTo} #{starting}->#{goal} #{diskTo}->#{goal}"
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3

def tower(disk_numbers, source, auxilary, destination)
  if disk_numbers == 1
    puts "#{source} -> #{destination}"
    return
  end
  tower(disk_numbers - 1, source, destination, auxilary)
  puts "#{source} -> #{destination}"
  tower(disk_numbers - 1, auxilary, source, destination)
  nil
end
