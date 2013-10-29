# Assume Download something from '/Users/apple/tealeaf/FileSample/Palace' to '/Users/apple/tealeaf/FileSample/Taiwan'
file_names = Dir['/Users/apple/tealeaf/FileSample/Palace/*.txt']
Dir.chdir ('/Users/apple/tealeaf/FileSample/Taiwan' )
puts file_names
file_names.each do |name|
  puts 'file downloading'
  name_new = File.basename(name)
    if File.exits? name_new
      puts "file already exist"
      puts "operation cancel"
      break
    end
  File.rename(name,name_new)
end

