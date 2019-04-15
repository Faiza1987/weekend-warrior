class Roman

  def self.reverter(roman)
    number = 0
    for i in (0...roman.length)

      # 1000
      if roman[i] == "M"
        number += 1000

        # 500
      elsif roman[i] == "D"
        number += 500

        # 100s
      elsif roman[i] == "C"

        if roman[i + 1] == "M" || roman[i + 1] == "D"
          # subtracting the undesired addition of 1000
          # number += (900 - 1000) 
        #   number -= 100
        # elsif roman[i + 1] == "D"
          # subtracting the undesired addition of 500 
          # number += (400 - 500)
          number -= 100
        else
          number += 100
        end
 
        # 50
      elsif roman[i] == "L"
        number += 50 

        # 10s
      elsif roman[i] == "X"

        if roman[i + 1] == "C" || roman[i + 1] == "L"
          number -= 10
        else
          number += 10
        end

        # 5
      elsif roman[i] == "V"
        number += 5 

        # 1s
      elsif roman[i] == "I"

        if roman[i + 1] == "X" || roman[i + 1] == "V"
          number -= 1
        else 
          number += 1
        end

      else
        puts "Not a valid roman number"
      end
    end
    return number
  end # method
end # class