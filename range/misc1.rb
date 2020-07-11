(1..10) # til 10
(1...100) # til 9
('a'..'c') # a b c
characters = ('a'..'ac')
# puts (1..10).to_a
# puts characters.to_a # a b c .....z, aa ab ac
#
puts characters.include? 'b' # true

characters.reject { |subrange| subrange < 'c' }
# characters.each { |char| puts 'Hello ' + char }
#

# while input = characters
#   puts input + " triggered" if input =~ /start/ .. input =~ /end/
# end

# Ruby Range Intervals
(1..20) === 15 # true

# case
score = 70

result =
  case score
  when 0..40
    'Fail' # when a, b, c # this means match to the exact value
  when 41..60
    'Pass'
  when 61..70
    'Pass with Merit'
  when 71..100
    'Pass with Distinction'
  else
    'Invalid Score'
  end

puts result
