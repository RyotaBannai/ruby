myString = %Q(This is "my" String)
puts myString


myString = ""
p myString.empty?
p myString.length

# Concatenating Strings below are all the same outcome.
myString = "Welcome " + "to " + "Ruby!"
p myString
myString = "Welcome " "to " "Ruby!"
p myString
myString = "Welcome " << "to " << "Ruby!"
p myString
myString = "Welcome ".concat("to ").concat("Ruby!")
p myString

# Freeze string this cannot be modified later.
myString.freeze
# myString << "hello" # error

# Subtract character
p myString[3]         # c
p myString[3].chr     # c
p myString[0, 3]      # Wel
p myString[0, 3].chr  # W set start and end poses
p myString[0..2]      # Wel

# The location of a matching substring can be obtained using the index
p myString.index("Ruby") # 11

# Comparing Strings
"Apples" <=> "Pears" # => -1
"Apples".casecmp "apples" # => 0 # case INsensitive