# For much larger evaluations, the Ruby case statement is a less cumbersome alternative
# rather than if...else statement
car = "Patriot"
manufaturer = case car
                when "Patriot" then "Jeep"
                when "Focus" then "Ford"
                else "Unknown"
              end
puts "The " + car + " is made by " + manufaturer

score = 70
result = case score
              when 80..100 then "4"
              when 60..80 then "3"
              else "Fail"
         end
puts "Your score " + score.to_s + " is grade " + result
