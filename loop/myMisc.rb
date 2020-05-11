i = 0
puts i += 1 until i == 5

for i in 1..3 do # loop from i == 1 thru i == 3
  puts i
end

5.times {|i| puts i} # begin at 0

puts
5.upto(10) do # 5 ~ 10
  puts "hello"
end

puts
1.upto(5) { |i| puts i } # 1 ~ 5

puts
1.upto(5) do |i|
  puts "hello" + i.to_s
end # 1 ~ 5

5.downup(1) { |i| }