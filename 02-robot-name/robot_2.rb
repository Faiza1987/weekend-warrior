class Robot
  attr_accessor :name

  def initialize
    @name = name_generator
  end

  def reset
    @name = name_generator
  end

  def name_generator
    alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    first_letter = alphabet.sample(1)
    second_letter = alphabet.sample(1)

    numbers = ["0","1","2","3","4","5","6","7","8","9"]
    digits = numbers.sample(3)

    return ((first_letter + second_letter) + digits).join
  end
end

robot = Robot.new
robot_2 = Robot.new

puts "Robot 1 name: #{robot.name}"
puts "Robot 2 name: #{robot_2.name}"