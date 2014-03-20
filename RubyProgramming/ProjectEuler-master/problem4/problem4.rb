#Largest palindrome product
#Problem 4
#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

palindromes = []
highest_palindrome = 0
product = ""

(100..999).each do |number|
  (100..999).each do |num|
    product = number * num if (number * num).to_s == (number * num).to_s.reverse
    palindromes << product.to_s
    
    highest_palindrome = number * num if (number * num > highest_palindrome) && (number * num).to_s == (number * num).to_s.reverse
    
    
  end  
end

#puts product
palindromes = palindromes.uniq
#puts palindromes = palindromes.sort
puts highest_palindrome
#answer: 906609
