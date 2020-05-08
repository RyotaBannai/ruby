d1 = ["Mon", "Tue", "Wed"]
d2 = ["Thu", "Fri", "Sat", "Sun"]
ds = d1+d2
print ds

print d1.concat(d2)

# Ruby way to append elem to array
print [] << 'new elem'

# - & | difference, intersection, union
#
puts ""
print d1 | d2 # Union.
puts ""
print d1 - d2 # ["Mon", "Tue", "Wed"] because nothing to be subtracted.
puts ""
print d1 & d2 # ["Thu", "Fri", "Sat", "Sun"] duplicates are removed. when nothing intersects, the second array will be returned.
puts ""
d3 = ["Mon", "Thu"]
print d1 & d3 # intersection therefore Mon and Thu
puts ""


# Stripping out duplicates or not.
linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora", "RHEL", "SuSE"] # returns unique values
print linux_systems.uniq
puts ""
print linux_systems
puts ""
print linux_systems.uniq!
puts ""
print linux_systems
##

# An array in Ruby can be treated as a Last In First Out stack
colors = ["rebecca purple", "turquoise"]
colors.push "tangerine", "ivory" # adding two of them!
print colors
colors.pop
print colors

# Array comparisons
# == is true when two of them have the same elems. eql? is the same as ==
# Finally, the <=> method (also known as the "spaceship" method) compares two arrays and returns 0 if the arrays are equal,
# -1 one if the elements are less than those in the other array, and 1 if they are greater.
puts ""
print [1,2,3] <=> [4,5,6] # =1
puts ""
print [4,5,6] <=> [1,2,3] # 1
puts ""
print [1,2,3] <=> [1,2,3] # 0

#
colors.insert(1, "titanium") # add by ref!
print colors
puts ""
colors[1] = 'mango' # add by ref!
print colors
puts ""
colors[1..2] = 'coffee', 'iron' # let's add two new colors.
print colors

colors.delete_at(-1) # detele last item
print colors