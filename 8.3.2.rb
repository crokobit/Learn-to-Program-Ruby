puts 'type "\'end\' to end entering data'
puts 'enter chapter, names, page numbers with space seperating'
puts 'example: 1 introduction 22'

temp = []
temp.push ["chapter","name","page"]
while (( input = gets.chomp ) != 'end' )
	# assume that input is legal
	temp.push  input.split(" ")
end

line_width = 40
max = temp.length
i = 0
while ( i < max )
	
	puts(temp[i][0].ljust(line_width/3) + temp[i][1].ljust(line_width/3) +temp[i][2].ljust(line_width/3))
i = i + 1
end
