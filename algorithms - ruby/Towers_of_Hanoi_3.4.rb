def hanoi_steps(number_of_discs)
# your code here
  step(number_of_discs, 1, 2, 3)
end

def step(disks, starting, aux, goal)
  if disks == 1
	puts move_disk(starting, goal)
  else
	step(disks-1, starting, goal, aux)
	puts move_disk(starting, goal)
	step(disks-1, aux, starting, goal)
  end
end

def move_disk(starting, goal)
  "#{starting}->#{goal}"
end 

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
