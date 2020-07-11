module Vihicle
  def maxSpeed
    puts "100 per / mile"
  end
  # module_function :maxSpeed  # you can't use the same name method both for module method and extend purpose...
end

# Vihicle.maxSpeed # this is for the module method purpose

class Car
  extend Vihicle
end

Car.maxSpeed


module Animal
  def move
    puts 'walk, swim, or fly'
  end
end

class Dolphin
  include Animal
end

dolphin = Dolphin.new
dolphin.move