

puts 'What is your first name?'
first = gets.chomp
puts 'your middle name?'
middle = gets.chomp
puts 'and finally...your last name?'
last = gets.chomp

name = first + ' ' + middle + ' ' + last
total_letters = first.length.to_i + middle.length.to_i + last.length.to_i
puts 'Did you know there are ' + total_letters.to_s + ' characters'
puts 'in your name, ' + name + '?'
