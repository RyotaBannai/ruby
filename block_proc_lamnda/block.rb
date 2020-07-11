[1, 2, 3].each { |num| puts num }

def print_once
  yield # you can define yield multiple times.
end

# When you use the yield keyword, the code inside the block will run & do its work
print_once { puts 'Block is being run' }

def provide_argument
  puts 'before yield'
  yield 1
  yield 2
  yield 3
end

provide_argument { |argument| puts argument * 10 }

# Implicit vs Explicit Blocks
def explicit_block(&block)
  puts 'before call'
  block.call
end

explicit_block { puts 'Explicit block called' } # {...} this is a block

def check_if_block_is_given
  return 'No block given' unless block_given?
  yield
end

puts check_if_block_is_given
