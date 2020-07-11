first_lamnda = -> { puts 'inside lambda' }
first_lamnda.call

# there are other three ways to call lambda
#
# first_lamnda.()
# first_lamnda[]
# first_lamnda.===

second_lambda = ->(x) { x * 2 }
puts second_lambda.call(10)
