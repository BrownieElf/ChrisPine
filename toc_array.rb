line_width = 60
puts ('Table of Contents'.center(line_width))
puts

array = ['Chapter 1:  Getting Started', 'page  1', 'Chapter 2:  Numbers        ', 'page  9', 'Chapter 3:  Letters        ', 'page 13']

x = 1
chap = []
page = []
line = []


array.each do |array|
  if x == 1
    chap << array
    x = 2
  else
    page << array
    
    puts chap.to_s.ljust(line_width / 2) + page.to_s.rjust(line_width / 2)
    chap.pop
    page.pop
    x = 1
  end
end

# old program using just strings...

#puts ('Chapter 1:  Getting Started'.ljust(line_width / 2)) + ('page  1'.rjust(line_width / 2))
#puts ('Chapter 2:  Numbers        '.ljust(line_width / 2)) + ('page  9'.rjust(line_width / 2))
#puts ('Chapter 3:  Letters        '.ljust(line_width / 2)) + ('page 13'.rjust(line_width / 2))
