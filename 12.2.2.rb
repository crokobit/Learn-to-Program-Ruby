puts "birth_year/month/day"
data = gets.chomp.split('/')
puts 'your birth day is ' + data.to_s
time_now = Time.now
time_birth = Time.mktime(data[0],data[1],data[2])
age = (time_now - time_birth)/(60*60*24*365)
puts 'your age is ' + age.to_s