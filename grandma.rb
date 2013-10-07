times = 0

while true
  year = rand(1929..1951)
  
  puts 'Say something to your grandma. :'
  words = gets.chomp!
  
  
  if words == 'BYE'
    times += 1 
  elsif words == words.upcase
    times = 0
    puts 'NO, NOT SINCE ' + year.to_s + '!' 
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  
  break if times == 3 && words == 'BYE'
  
end

