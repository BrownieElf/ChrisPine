## wedding_number pg. 81
## using recursion and arrays.

def wedding_number number
  
  # we accept numbers from 1 to 100.
  
  if number < 0 ## No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  
  if number == 0
    return 'zero'
  end
  
  ## No more special cases!  No more returnes!
  num_string = '' # This is the string we will return.
  
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
                
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
                
  teenagers  = ['eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  
  # "left"  is how much of the number
  #         we still have left to write out.
  # "write" is the part we are
  #         writing out right now.
  # write and left... get it?  :)
  
  ## add code for millions.
      left = number
      write = left / 1000000
      left = left - write * 1000000
  
      if write > 0
        millions = wedding_number write
        num_string = num_string + millions + ' million'
        
        if left > 0 
          num_string = num_string + ' and '
        end
      end
        number = left
  
  ## add code for thousand.
  
      left = number
      write = left / 1000
      left = left - write * 1000
  
  
      if write > 0
        thousands = wedding_number write
        num_string = num_string + thousands + ' thousand'
        if left > 0
          num_string = num_string + ' and '
        end
        number = left
      end
  
      left  = number
      write = left / 100          # How many hundreds left?
      left  = left - write * 100  # Subtract off those hundreds.
  
      if write > 0
        ## Now here is the recursion:
        hundreds = wedding_number write
        num_string = num_string + hundreds + ' hundred'
        if left > 0
          # So we don't write 'two hundredfifty-one'...
          num_string = num_string + ' and '
        end
      end
    
    
      write = left / 10       # How many tens left?
      left = left - write * 10  # Subract off those tens.
  
      if write > 0
        if ((write == 1) and (left > 0))
          # Since we can't write "tenty-two" instead of
          # "twelve", we have to make a special exception
          # for these.
          num_string = num_string + teenagers[left - 1]
          # The "-1" is because teenagers [3] is
          # 'fourteen', not 'thirteen'.
          # Since we took car of the digit in the
          # ones place already, we have nothing left to write.
          left = 0
        else
          num_string = num_string + tens_place[write - 1]
          # The "-1" is because tens_place[3] is
          # 'forty' not 'thirty'.
        end
        if left > 0
          # So we don't write 'sistyfour'...
          num_string = num_string + ' and '
        end
      end

  
    write = left  # How many ones left to write out?
    left  = 0     # Subtract off those ones.
  
    if write > 0
      num_string = num_string + ones_place[write - 1]
      # The "-1" is because ones_place[3] is
      # 'four' and not 'three'.
    end
  
  # Now we just return "num_string"...
  num_string
end

puts wedding_number 1970
puts wedding_number 1997

puts wedding_number 2000

puts wedding_number 2013
puts wedding_number 2016

puts wedding_number 2199



