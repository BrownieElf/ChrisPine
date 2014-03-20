class Problem1
  
sum = 0
  (1...1000).each do |number|
    if number % 3 == 0 || number % 5 == 0
      puts number
      sum += number
    else
      number  
    end
  
  end
puts "Sum of numbers divisible by 3 and 5: " + sum.to_s
end