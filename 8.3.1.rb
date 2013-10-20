temp = []
while ( (input = gets) != "\n")
	temp.push input.gsub("\n",'')	
	#puts input
end

puts temp.sort 
