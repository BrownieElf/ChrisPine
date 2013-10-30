## this sort works with capital letters

def sort some_array 
  dictionary_sort some_array, []
end

def dictionary_sort some_array, sorted_array
  
  return sorted_array if some_array == []
  
  smallest_word = ''
  
  some_array.each do |word|
    smallest_word = word if smallest_word == '' or word.downcase < smallest_word.downcase
#    puts "This is the first word: #{smallest_word}"
#    smallest_word
  end
  
#  puts smallest_word ## this works...but its not really returning the array...its printing it as its built.
  
  sorted_array << some_array.delete(smallest_word)

  dictionary_sort some_array, sorted_array
  
end


puts 'Here is your list of sorted words: '
puts
puts sort ['Pear', 'watermelon', 'apple', 'Orange', 'bannana', 'Grapes', 'Apricots', 'kiwi']


