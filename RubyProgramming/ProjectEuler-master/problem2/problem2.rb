# Even Fibonacci numbers
class Problem2
  
  puts first = 1
  puts second = 2
  fibonacci = 0
  sum = 2 
  

  while fibonacci < 4000000 
    
    fibonacci = first + second
    puts fibonacci if fibonacci <4000000
    first = second
    second = fibonacci
    
    sum += fibonacci if fibonacci % 2 == 0
    
  end

puts "Sum of the even numbers is: " + sum.to_s
end