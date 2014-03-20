#Largest prime factor

#Problem 3
#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?



# why couldn't i use Prime even after i required it?

class LargestPrime
  number = 100
#  number = 13195 
#  number = 600851475143

#  factors = []
#  prime_factors = []
  
  first_loop_if = []
  first_loop_else = []
  
  second_loop_if = []
  second_loop_else =[]
  
  
  square_root = Math.sqrt(number)
  
# this finds all the factors...but some are not prime
  2.upto(number - 1).each do |num|
#      factors << num if number % num == 0
    if number % num == 0
#      print num
#      puts " first loop if"
      first_loop_if << num 
      2.upto(num - 1).each do |n|
        if num % n == 0
#          print num
#          puts " second loop if"
          second_loop_if << n
        else
#          print num
#          puts " second loop else"
          second_loop_else << n
                     
        end
        
      end
      
    else
#      print num
#      puts " first loop else"
      first_loop_else << num
    end
#    print "prime factors"
#    puts prime_factors.uniq
  end 
#    puts "factors"
 #   puts factors.uniq
#    puts "prime factors"
#    puts prime_factors
#puts first_loop_if.uniq
puts second_loop_else.uniq    
#puts first_loop_else.uniq
puts second_loop_if.uniq
        
end 