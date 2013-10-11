# These are just to make the map easier for me to read.
# "M" is visually more dense than "o".
Z = 'omg'
M = 'land'
o = 'water'
size = 0
puts size.to_s + ' beginning'

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

world = [[o, o, o, o, o, o, o, o, o, o, o], 
         [o, o, o, o, M, M, o, o, o, o, o], 
         [o, o, o, o, o, o, o, o, M, M, o], 
         [o, o, o, M, o, o, o, o, o, M, o],
         [o, o, o, M, o, M, M, o, o, o, o],
         [o, o, o, o, M, M, M, M, o, o, o],
         [M, o, o, M, M, M, M, M, M, M, M],
         [o, o, o, M, M, o, M, M, M, o, o],
         [o, o, o, o, o, o, M, M, o, o, o],
         [o, M, o, o, o, M, o, o, o, o, o],
         [o, o, o, o, o, o, o, o, o, o, o]]

def continent_size world, x, y, size
#  size = 0 if size == nil # this sets the variable only if it hasn't been set...i.e. the first time thru
  
  while size >= 1 # this loop is skipped the first time thru so the original cords can be counted
                  # it doesn't matter in this situation, but if x,y were 0,0 or 11,11 it would.
    if world[x] < 0     # these loop around at the array index bounds...meaning zero or the length.
      puts 'world[x] is less than zero'
      x = world[x].size
    elsif world[x] > (world[x].size - 1)
      x = 0
    end
  
    if y < 0
      y = world[y].size
    elsif y >= world[y].size
      y = 0
    end
    
    if i >= N
        i = i - N
    elsif i < 0
        i = i + N
    end
  end   
 
  if world[y][x] == 'omg'
    world[y][x] = 'wow'
    return 0
  end
  
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

puts continent_size(world, 5, 5, 1)
#puts world



=begin
xxxxx = [[w, w, w, o, L, L, w, o, w, w, w], #39 total plus the start space
         [w, w, w, w, L, L, w, w, w, w, w],
         [w, w, w, w, L, w, w, w, L, L, w],
         [o, w, w, L, w, w, w, w, w, L, o],
         [L, L, L, L, w, L, L, w, w, w, L],
         [w, w, w, w, L, S, L, L, w, w, w],
         [L, w, w, L, L, L, L, L, L, L, L],
         [o, w, w, L, L, w, L, L, L, w, o],
         [w, w, w, w, w, w, L, L, w, w, w],
         [w, L, w, w, w, L, w, w, w, w, w],
         [w, w, w, o, L, L, w, o, w, w, w]]
         
=end