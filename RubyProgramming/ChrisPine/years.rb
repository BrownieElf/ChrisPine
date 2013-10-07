puts 'Could you give me a starting year please?:'
starting_year = gets.chomp

puts 'Could you give me an ending year please?:'
ending_year = gets.chomp

years = starting_year.to_i

while years <= ending_year.to_i
   
  if years % 100 == 0
    puts years.to_s + ' is a leap year!' if years % 400 == 0
  elsif years % 4 == 0
    puts years.to_s + ' is a leap year!'
  else
    # not a leap year!
  end
  
  years += 1
end 
 