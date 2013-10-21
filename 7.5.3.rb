puts " Enter to deternine whether runar year or not ? "
puts " type exit to leave  "
# Assume input is legal
while ( year = gets.chomp ) != "exit"
	year = year.to_i
	if ( year % 400 == 0 ) || ( (year % 4 == 0) && (year % 100 != 0) )
		puts"runar year"
	else
		puts"not runar year"
	end
end
