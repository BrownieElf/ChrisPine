#Largest prime factor

#Problem 3
#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
#number = 13195
number = 600851475143
factors = []

# finds all the possible factors of the number except itself and one.
2.upto(Math.sqrt(number)).each do |num|
  factors << num if number % num == 0
end

# loops through the factors and checks to see if they are prime or composite.
# Composite numbers are deleted from the array. 
factors.uniq.each do |factor|
  2.upto(Math.sqrt(factor)).each do |fact|
      factors.delete(factor) if factor % fact == 0      
  end
end

puts factors

# answer: 6857

