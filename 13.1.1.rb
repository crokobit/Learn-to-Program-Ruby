=begin
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
=end


  
num = 0  #initial num

while num < 1 || num > 3000
  puts ' Enter a number between 1 and 3000'
  num = gets.chomp.to_i
  if num < 1 || num > 3000
    puts 'Out of range'
  elsif num >= 1 && num <= 3000
    puts 'Range OK!'
  else
    puts 'ERROR!!'
  end   
end



def roman_numeral numt
  ronum = ['I' ,'V' ,'X' ,'L' ,'C' ,'D' ,'M']
  roval = [1,5,10,50,100,500,1000]
  temp  = []
  roMAX = roval.length
  i = 3 # 1000 100 10 1
  while i >= 0


    tar = ( numt - ( numt % 10**i ) ) / 10**i
    

    if i == 3
      tar.times do
        temp.push 'M'
      end
    #puts 'i = ' + i.to_s + ' temp = ' + temp.to_s + ' tar = ' + tar.to_s
    else

      if tar == 0 
        #puts 'do nth' 
      elsif tar > 0 && tar <= 3
        tar.times do
          temp.push ronum[0+2*i]
        end
      elsif tar == 4
        temp.push ronum[0+2*i]
        temp.push ronum[1+2*i]
      elsif tar == 5
        temp.push ronum[1+2*i]
      elsif tar >= 6 && tar <= 8
        temp.push ronum[1+2*i]
        (tar-5).times do
        temp.push ronum[0+2*i]
        end
      elsif tar == 9
        temp.push ronum[0+2*i]
        temp.push ronum[2+2*i]
      else
        puts 'ERROR!!!!'
      end

      #puts 'i = ' + i.to_s + ' temp = ' + temp.to_s + 'tar = ' + tar.to_s
    end
  numt = numt % 10**i
  i = i - 1

  end
  temp.join
end

class Integer
  def to_roman
    roman_numeral self
  end
end

puts num.to_i.to_roman