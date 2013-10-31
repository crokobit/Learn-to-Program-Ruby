def check_time &sec
  time = sec.call
  puts time
  if ((time == 0) || (time == 20) || (time == 40))
    puts "HAHA"
  end
end
while true
  check_time { Time.new.sec }
end