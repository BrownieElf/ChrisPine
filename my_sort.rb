## my own sort method without recursion

unsorted_array = []
sorted_array = []

data = ''

puts 'please enter as many words as you want...'
puts 'when you are finished press \'enter\' on a blank line'


until data == "\n"
data = gets
unsorted_array << data.chomp if data != "\n"
puts "you typed #{data}"

  if data == "\n"
    puts 'have a nice day! Here is your list of sorted words'
    puts
  end

end
puts 'unsorted'
puts
puts unsorted_array

until unsorted_array == []
  
  smallest = ''
  
  unsorted_array.each do |word|

    smallest = word if smallest == ''
    smallest = word if word < smallest
    
  end  
sorted_array << smallest
unsorted_array.delete(smallest)
end
puts 
puts 

puts 'sorted'
puts
puts sorted_array

