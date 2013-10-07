def old_roman_numeral number
  
  remainder = number
  string = ''
  
  until remainder == 0  
    if remainder >= 1000
      until remainder < 1000
        if remainder == 1000
          string += 'M'
          remainder -= 1000
        else
          string += 'M'
          remainder -= 1000
        end
      end
    elsif remainder >= 500
      until remainder < 500
        if remainder == 500
          string += 'D'
          remainder -= 500
        else
          string += 'D'
          remainder -= 500
        end
      end
    elsif remainder >= 100
      until remainder < 100
        if remainder == 100
          string += 'C'
          remainder -= 100
        else
          string += 'C'
          remainder -= 100
        end
      end  
    elsif remainder >= 50
      until remainder < 50
        if remainder == 50
          string += 'L'
          remainder -= 50
        else
          string += 'L'
          remainder -= 50
        end
      end  
    elsif remainder >= 10
      until remainder < 10
        if remainder == 10
          string += 'X'
          remainder -= 10
        else
          string += 'X'
          remainder -= 10
        end
      end  
    elsif remainder >= 5
      until remainder < 5
        if remainder == 5
          string += 'V'
          remainder -= 5
        else
          string += 'V'
          remainder -= 5
        end
      end
    elsif remainder >= 1
      until remainder < 1
        if remainder == 1
          string += 'I'
          remainder -= 1
        else
          string += 'I'
          remainder -= 1
        end
      end  
    else
      puts 'did not compute'
    end
  end
  
  puts "#{number} is Roman Numeral: " + string
  
end



old_roman_numeral 2000
old_roman_numeral 1500
old_roman_numeral 1700
old_roman_numeral 1750
old_roman_numeral 1770
old_roman_numeral 1785
old_roman_numeral 1889
old_roman_numeral 7692











