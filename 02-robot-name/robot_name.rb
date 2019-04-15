
# def generate_code(regexp)
#   charset = Array('A'..'Z') + Array(0..9)
#   Array.new(regexp) { charset.sample }.join
# end
# puts generate_code(/^[A-Z]{2}\d{3}$/)

class Robot
  attr_accessor :name

  def initialize
    alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    chars = alphabet.sample(2)

    numbers = ["0","1","2","3","4","5","6","7","8","9"]
    digits = numbers.sample(3)

    name = (chars + digits).join
    
    @name = name
  end

  def reset
    alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    chars = alphabet.sample(2)

    numbers = ["0","1","2","3","4","5","6","7","8","9"]
    digits = numbers.sample(3)

    name = (chars + digits).join
    @name = name
  end
end

robot = Robot.new
robot_2 = Robot.new

puts "Robot 1 name: #{robot.name}"
puts "Robot 2 name: #{robot_2.name}"