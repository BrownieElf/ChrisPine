# C before D and M
# X before C and L
# I before X and V


# 4 and 9
# 40 and 90
# 400 and 900
def old_roman_numeral number
  
  remainder = number
  string = ''
  
  until remainder == 0  
    if remainder / 1000 >= 1
      if remainder % 1000 == 900
        string += 'M' * (remainder / 1000) + 'CM'
        remainder = (remainder % 1000) - 900
      else
        string += 'M' * (remainder / 1000)
        remainder = (remainder % 1000)
      end
    elsif remainder / 500 >= 1
      if remainder % 500 == 400
        string += 'D' * (remainder / 500) + 'CD'
        remainder = (remainder % 500) - 400
      else 
        string += 'D' * (remainder / 500)
        remainder = (remainder % 500)
      end
    elsif remainder / 100 >= 1
      string += 'C' * (remainder / 100) unless (remainder / 100) == 4
      string += 'CD' if remainder / 100 == 4
      remainder = remainder % 100
    elsif remainder / 50 >= 1
      string += 'L' * (remainder / 50) unless (remainder / 50) == 4
      remainder = remainder % 50
    elsif remainder / 10 >= 1
      if remainder % 10 == 9
        string += 'X' * (remainder / 10) + 'IX'
        remainder = (remainder % 10) - 9
      else
        string += 'X' * (remainder / 10)
        remainder = (remainder % 10)
      end
    elsif remainder / 5 >= 1
      if remainder % 5 == 4
        string += 'I' * (remainder / 5) + 'X'
        remainder = (remainder % 5) - 4
      else
        string += 'V' * (remainder / 5)
        remainder = (remainder % 5)
      end
    else# remainder / 1 >= 1
       if remainder == 4
         string += 'IV'
         remainder -= 4
         
       else
         string += 'I' * (remainder / 1)
         remainder = (remainder % 1)
        #remainder = 0
       end 
    end
 
  end
  
  puts "#{number} is Roman Numeral: " + string
end



#old_roman_numeral 2000
#old_roman_numeral 1000
#old_roman_numeral 8000
#old_roman_numeral 1500
#old_roman_numeral 1900
#old_roman_numeral 1700
#old_roman_numeral 900
#old_roman_numeral 30
#old_roman_numeral 50
#old_roman_numeral 19
#old_roman_numeral 500
#old_roman_numeral 400
#old_roman_numeral 300
#old_roman_numeral 1400
#old_roman_numeral 1700
#old_roman_numeral 1750
#old_roman_numeral 1770
#old_roman_numeral 1785
#old_roman_numeral 1889
#old_roman_numeral 7692

#old_roman_numeral 9
#old_roman_numeral 8
#old_roman_numeral 5
#old_roman_numeral 4
#old_roman_numeral 3
#old_roman_numeral 1
#old_roman_numeral 7649
#old_roman_numeral 5432
#old_roman_numeral 1944
#old_roman_numeral 1900

#old_roman_numeral 4
#old_roman_numeral 9
old_roman_numeral 40
old_roman_numeral 90
old_roman_numeral 400
old_roman_numeral 900




