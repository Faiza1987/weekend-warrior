class Roman

  def self.reverter(roman)
    number = 0
    for i in (0...roman.length)
      if roman[i] == "M"
        number += 1000
      elsif roman[i] == "C"
        if roman[i + 1] == "M"
          # subtracting the undesired addition of 1000
          number += (900 - 1000) 
        elsif roman[i + 1] == "D"
          # subtracting the undesired addition of 500 
          number += (400 - 500)
        else
          number += 100
        end
      elsif roman[i] == "D"
        number += 500
      elsif roman[i] == "X"
        if roman[i + 1] == "C"
          number += (90 - 100)
        elsif roman[i + 1] == "L"
          number += (40 - 50)
        else
          number += 10
        end
      elsif roman[i] == "L"
        number += 50 
      elsif roman[i] == "I"
        if roman[i + 1] == "X"
          number += (9 - 10)
        elsif roman[i + 1] == "V"
          number += (4 - 5)
        else 
          number += 1
        end
      elsif roman[i] == "V"
        number += 5 
      else
        puts "Not a valid roman number"
      end
    end
    return number
  end # method
end # class

puts Roman.reverter("XXX")