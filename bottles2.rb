require './english_number2'
bottle = 99

while bottle > 0
  bottles = english_number bottle
  
  puts bottles + ' bottles of beer on the wall...' + bottles + ' bottles of beer.'
  puts 'Take one down...pass it around...' + bottles + ' bottles of beer on the wall.'
  puts
  bottle -= 1
end

puts 'now your freakin wasted!'