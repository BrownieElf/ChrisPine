def double_this num
  num_times_2 = num * 2
  puts num.to_s + ' doubled is ' + num_times_2.to_s
end

double_this 44

# remember that num and num_times_2 are 'local variables'

#puts num_times_2.to_s # This doesn't work because that variable is local to the 'double_this' method.

