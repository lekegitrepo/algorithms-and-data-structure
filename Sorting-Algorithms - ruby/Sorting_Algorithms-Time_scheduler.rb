# frozen_string_literal: true

def time_scheduler(array)
  schedule = []
  events = array.each_slice(2).to_a.sort! { |a, b| a[1] <=> b[1] }
  schedule << events[0]
  schedule_end = events[0][1]
  (1...events.size).each do |time|
    sched_start = events[time][0]
    sched_end = events[time][1]
    if sched_start > schedule_end
      schedule << events[time]
      schedule_end = sched_end
    end
  end
  schedule
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]

p time_scheduler([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])

p time_scheduler([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])

p time_scheduler([2, 6, 5, 10, 7, 12, 0, 9, 4, 8])
