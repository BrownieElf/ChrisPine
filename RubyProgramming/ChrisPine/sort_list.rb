list = []

while true
  data = gets
  break if data == "\n" 
  list.push data
end

puts 'done'

puts list.sort
