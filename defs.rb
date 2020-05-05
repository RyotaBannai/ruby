def saysomething()
  print "Hello"
  puts ", World"
end

saysomething

def manyArgs(*many)
  many.each {|string| puts string}
end

manyArgs("str1", "str2")

alias awesome manyArgs
awesome("omg", "hollyshit")