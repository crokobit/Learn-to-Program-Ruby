max_bottles = 99
i = max_bottles
while i != 0 
	puts i.to_s + " bottles of beer on the wall,"  + i.to_s + " bottles of beer."
	i = i - 1
	if( i !=0 )
	puts "Take one down and pass it around, " + i.to_s + " bottles of beer on the wall."
	puts ("\n")
	elsif( i == 0 )
	puts "Take one down and pass it around, no more bottles of beer on the wall."
	puts ("\n")
	puts "No more bottles of beer on the wall, no more bottles of beer."
	puts "Go to the store and buy some more, " + max_bottles.to_s + " bottles of beer on the wall."	
	end
end
