# Changing the section of the String..
myString = "Welcome to JavaScript!"
myString["JavaScript"] = "Ruby"
p myString

# Replace 10th index with "Ruby"
myString[10]= "Ruby"  # => "Welcome toRubyJavaScript!"
p myString

myString[0..-1] = "Ruby"
p myString  # => "Ruby"

myRubt = "Ruby"
p myRubt * 3  # "RubyRubyRuby"
myArr = [1,2,3]
p myArr * 3  # [1, 2, 3, 1, 2, 3, 1, 2, 3]

# Insert string, not replace with []
myStr = "Paris in Spring"
myStr.insert 8, " the"
p myStr  # "Paris in the Spring"


# Ruby chomp and chop Methods
myStr2 = "Paris in the Spring!"
p myStr2.chop # => "Paris in the Spring" remove 1 char at the end.

myStrWithSep = "This\n is\n awesome\n"
p myStrWithSep.chomp