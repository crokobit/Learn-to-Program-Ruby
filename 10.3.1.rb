def shuffle array
  array.sort_by{rand}
end

input = gets.chomp

data = input.split(' ')

puts 'input array ' + input.inspect
puts "shuffle + #{shuffle data} "
