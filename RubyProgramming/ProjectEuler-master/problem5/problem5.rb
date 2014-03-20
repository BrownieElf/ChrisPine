# 2520 is the smallest number that can be divided by each of the 
# numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

MAX_DIVISOR = 20

def is_div_by_whatever(n)
#  test = true
  array = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
# array = [11, 10, 9, 8, 7, 6, 4]
  array.each do |array|
    if n % array != 0
      return false
    else
      
    end
  end
  return true
  
end

# What is the smallest positive number?
# loop over positive numbers until we find something

#n = 20
n = 400000
while true
  if is_div_by_whatever(n)
    puts "Hey! #{n} is a winner"
    exit
  else
    puts "Try #{n}"
  end
#  n = n + 20
  n += 400000
end

