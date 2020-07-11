=begin
    There is no dedicated Lambda class. A lambda is just a special Proc object. 
    If you take a look at the instance methods from Proc, you will notice there is a lambda? method.
=end

first_proc = proc { |x| puts x }
first_proc.call([1, 2])

# this works
my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"

# Should raise exception, LocalJumpError exception. didn't show anything after the error
# my_proc = proc { return 1 }
# puts "Proc result: #{my_proc.call}"

def call_proc
  puts 'Before proc'
  my_proc = proc { return 2 } # can see 2
  my_proc.call
  puts 'After proc' # cannot
end
p call_proc
