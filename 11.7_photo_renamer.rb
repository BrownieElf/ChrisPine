Dir.chdir './sorted_photos'

pic_names = Dir['./new_photos/*.jpg']


puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts

pic_number = 1
pic_names.each do |pics|
  new_name = 
      if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
      else
        "#{batch_name}#{pic_number}.jpg"
      end
  
  if File.exist? (new_name)
    puts 'Batch name in use...aborting copy!!!'
    exit
  end  
    
    
end 
 

print "Downloading #{pic_names.length} files: "

#pic_number = 1

  pic_names.each do |name|
    print '.' # This is our progress bar.
  
    new_name = 
      if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
      else
        "#{batch_name}#{pic_number}.jpg"
      end
    
      if File.exist? (new_name)
        puts
        puts 'file exists!!!'
        exit
      else
        File.rename name, new_name
        pic_number = pic_number + 1
      end
  end
  
  puts
  puts 'All done!'

