count = 1

def call_proc(my_proc)
  count = 2
  # my_proc.call -> count = 3
  my_proc.call
  puts count # count = 2
end

count = 3 # here overwrite count = 1 to count = 3
my_proc = proc { puts count } # capture count = 3
count = 4
call_proc(my_proc)
