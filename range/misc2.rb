range1 = (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p range1

not_rejected_items = range1.reject { |i| i < 5 } # [5, 6, 7, 8, 9, 10]
puts "Rejected values are #{not_rejected_items}"

# range as condition, or intervals
puts '5 lies in (1..10)' if ((1..10) === 5)

puts "c lies in ('a'..'j')" if (('a'..'j') === 'c')

puts "z lies in ('a'..'j')" if (('a'..'j') === 'z')
