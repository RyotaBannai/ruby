def test
  a = 'a is for apple'
  inner_method = -> { a = 'something' }

  puts a # => "a is for apple"
  inner_method.call
  puts a # => "something"
end

test
