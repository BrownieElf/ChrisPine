puts 'Could you please tell me your favorite number? :'
number = gets.chomp

puts
puts number + ' is a nice number in all...but clearly ' 
number = number.to_i + 1
puts number

puts number.to_s + ' is a bigger and better number! Just deal with it!'