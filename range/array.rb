days_of_week = Array.new
puts days_of_week.empty? # true

days_of_week2 = Array.new(7)
puts days_of_week2.empty? # false [nil, nil, nil, nil, nil, nil, nil]

days_of_week3 = Array.new(7, 'today')
puts days_of_week3 # ["today", "today", "today", "today", "today", "today", "today"]

days_of_week4 = Array['Mon', 'Tues', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
puts days_of_week4.size

days_of_week4.at(0)
days_of_week4[-1]
days_of_week4.first
days_of_week4.last
days_of_week4.index('Mon')
puts days_of_week4[0, 2] # starts at index 0 and takes 2 => 0,1
puts days_of_week4[0..2] # starts at index 0 and ends at index 2 => 0,1,2
