a = 10
puts a.kind_of? Integer # true
puts a.class # Integer

# Ruby will dynamically change the type
a = 'This is string.'
puts a.kind_of? String # true

b = 10
puts b.to_f # satisfying.!
puts b.to_s(2) # convert to binary

puts defined? a # local-variable
# @c = 'global'
# puts defined? c
#
_d = 'local val'
puts defined? _d # local-variable

puts Integer(1.222) # 1