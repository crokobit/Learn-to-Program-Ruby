class OrangeTree
  def initialize name
    @tall = 1
    @age = 1
    @fruit = 0
    @tree_name = name
    @die = false
    status
  end
  def one_year_pass
    @tall += 1
    @age +=1
    ( @age > 3 ) ? ( @fruit += 1 ) : ()
    status
    check_die
  end
  def check_die
    if @age > 5
      #puts "die"
      @die=true
    end
  end
  def eat
    @fruit -= 1
    puts "eat 1 fruit"
    status
  end
  def status
    if @die
      puts"#{@tree_name} is die"
    else
      puts "tree_name = #{@tree_name} tall = #{@tall} , age = #{@age} fruit = #{@fruit}"
    end  
  end
  private
end

mytree = OrangeTree.new 'mytree'

3.times { mytree.one_year_pass }
mytree.eat
3.times { mytree.one_year_pass }