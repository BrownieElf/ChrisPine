## program that shuffles the contents of the given array

def shuffle stuff
  shuffler stuff, [] # [] is the empty 'shuffled_stuff array'
  
end
  
def shuffler stuff, shuffled_stuff
  max = stuff.length
  #puts max
  
  return puts shuffled_stuff if max == 0
  
  shuffled_stuff << stuff.delete_at(rand(max))
  
  shuffler stuff, shuffled_stuff
end

shuffle [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
shuffle ['apples', 'banannas', 'grapes', 'pears']


