puts "say to Grandma , type 'BYE'"
counter = 0 ;
#while ( say = gets.chomp ) != "BYE"
while ( say = gets.chomp )
	if say == "BYE"
		counter = counter + 1
		if counter == 3
			break
		end
	elsif say != say.upcase
		puts "HUH?!  SPEAK UP, SONNY!"
	elsif say == say.upcase
		year = 1930 + ( 20 * rand() )
	    year = year - year % 1	# 1930~1950
		puts "NO, NOT SINCE " + year.to_i.to_s + "!"
	end
	
end
