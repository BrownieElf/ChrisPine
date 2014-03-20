# These are just to make the map easier for me to read.
# "M" is visually more dense than "o".

M = 'land'
o = 'water'

### original 'world' for reference...

world = [[o, o, o, o, o, o, o, o, o, o, o], # 23 connected 'lands'...6 not connected
         [o, o, o, o, M, M, o, o, o, o, o], # 29 total 'lands'
         [o, o, o, o, o, o, o, o, M, M, o],
         [o, o, o, M, o, o, o, o, o, M, o],
         [o, o, o, M, o, M, M, o, o, o, o],
         [o, o, o, o, M, M, M, M, o, o, o],
         [o, o, o, M, M, M, M, M, M, M, o],
         [o, o, o, M, M, o, M, M, M, o, o],
         [o, o, o, o, o, o, M, M, o, o, o],
         [o, M, o, o, o, M, o, o, o, o, o],
         [o, o, o, o, o, o, o, o, o, o, o]]

world = [[o, o, o, M, o, o, o, o, o, o, o], # 33 connected 'lands...looping over in all directions
         [o, o, o, M, o, o, o, o, o, o, o], 
         [o, o, o, M, o, o, o, o, M, M, o], 
         [o, o, o, M, o, o, o, o, o, M, o],
         [o, o, o, M, o, M, M, o, o, o, o],
         [o, o, o, o, M, M, M, M, o, o, o],
         [M, M, M, M, M, M, M, M, M, M, M],
         [o, o, o, M, M, o, M, M, M, o, o],
         [o, o, o, M, o, o, M, M, o, o, o],
         [o, M, o, M, o, M, o, o, o, o, o],
         [o, o, o, M, o, o, o, o, o, o, o]]
         
world = [[o, o, o, M, o, o, o, o, o, o],
         [o, o, o, M, o, o, o, o, o, o, o, o], 
         [o, o, o, M, o, o, o, o, M, M, o], 
         [o, o, o, M, o, o, o, o, o, M, o],
         [o, o, o, M, o, M, M, o, o, o, o],
         [o, o, o, o, M, M, M, M, o, o, o],
         [M, M, M, M, M, M, M, M, M, M, M],
         [o, o, o, M, M, o, M, M, M, o, o],
         [o, o, o, M, o, o, M, M, o, o, o],
         [o, M, o, M, o, M, o, o, o, o, o],
         [o, M, o, M, o, M, o, o, o, o, o],
               [o, M, o, M, o, o, o, o, o]]         
         
#puts world.size.to_s + ' length of column' 
#puts world[1].size.to_s + ' size of 2nd row'          

world.each do |column|
#  puts world.index(column) ## gives index of row
  print column.length.to_s + ' is the length of row ' + world.index(column).to_s
  puts
  # stuff this into a hash? (0 => 10, 1 => 12,...)
  # so it can be compared below instead of using numbers like 11, which won't work if the arrays are of different length.
  
  column.each do |x|
    string = ''
    if x == 'land'
      x = 'M'
    else # water
      x = 'o'
    end
    print string << x
  end
  puts
end         

def continent_size world, x, y
  
=begin
    if i >= N
        i = i - N
    elsif i < 0
        i = i + N
    end
=end    
  if x >= 11
    x = x - 11
  elsif x < 0
    x = x + 11
  end
  
  if y >= 11
    y = y - 11
  elsif y < 0
    y = y + 11
  end
#  end   

 
  if world[y][x] != 'land' ## y is first because the first []'d number is the array index so it is (up and down)
    # Either it's water or we already counted it,
    # but either way, we don't want to count it now.
    return 0
  end
  
  
  # So first we count this tile...
  size = 1
  world[y][x] = 'counted_land'
  
  # ...then we count all of the neighboring eight tiles
  # (and of course, their neighbors by way of recursion).
  
  size = size + continent_size(world, x - 1, y - 1) # top left...searching diagonally up and to the left
  size = size + continent_size(world, x, y - 1) # top center
  size = size + continent_size(world, x + 1, y - 1) # top right...searching diagonally up and to the right
  size = size + continent_size(world, x - 1, y) # center left
  size = size + continent_size(world, x + 1, y) # center right
  size = size + continent_size(world, x - 1, y + 1) # bottom left...searching diagonally down and to the left
  size = size + continent_size(world, x, y + 1) # bottom center
  size = size + continent_size(world, x + 1, y + 1) # bottom right...searching diagonally down and to the right
  size
  
end
puts
puts continent_size(world, 9, 2) # would be easier to follow if it was 'y' 'x' instead of 'x' 'y'...this is 2 down...9 over
puts continent_size(world, 5, 5) # 5 down and 5 over





