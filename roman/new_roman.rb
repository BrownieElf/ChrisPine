class NewRoman


public
 
  def generator number
    remainder = number
    roman_string = ''
    
    until remainder == 0
      
      if remainder >= 4000 # break out of loop
        remainder = 0
        return 'error'
      
      elsif remainder >= 1000 #&& remainder < 4000
        roman_string += 'M'
        remainder -= 1000
        
      elsif remainder >= 900 #&& remainder < 1000
        roman_string += 'CM'
        remainder %= 900
        
      elsif remainder >= 500 #&& remainder < 900
        roman_string += 'D'
        remainder %= 500
        
      elsif remainder >= 400 #&& remainder < 500
        roman_string += 'CD'
        remainder %= 400
      
      elsif remainder >= 100 #&& remainder < 400
        roman_string += 'C' * (remainder / 100)
        remainder %= 100
        
      elsif remainder >= 90 #&& remainder < 100
        roman_string += 'XC'
        remainder %= 90
        
      elsif remainder >= 50 #&& remainder < 90
        roman_string += 'L'
        remainder %= 50
        
      elsif remainder >= 40 #&& remainder < 50
        roman_string += 'XL'
        remainder %= 40
      
      elsif remainder >= 10 #&& remainder < 40)
        roman_string += 'X' #* (remainder / 10)
        remainder -= 10
      
      elsif remainder == 9
        roman_string += 'IX'
        remainder -= remainder
      
      elsif remainder >= 5 #&& remainder < 9
        roman_string += 'V'
        remainder -= 5
        
      elsif remainder == 4
        roman_string += 'IV'
        remainder -= remainder  
      
      elsif remainder < 4
        roman_string += 'I' * remainder
        remainder %= remainder
       
      end
    end
    
    return roman_string
    
  end
end



