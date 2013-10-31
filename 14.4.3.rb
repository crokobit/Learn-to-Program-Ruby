$nesting_depth = 0

def space_ident
  $nesting_depth.times { print ' ' }
end

def log (process_name,&process)
  space_ident
  puts "#{process_name} begin"
  $nesting_depth += 1
  returnV = process.call
  $nesting_depth -= 1
  space_ident
  puts "#{process_name} end , return = #{returnV} "
end

#log 'puts' { "HAHAHAHA" } error... why???

def level1
  space_ident
  puts"In Level1"
  log 'level 2' do
    level2
  end
end

def level2
  space_ident
  puts"In Level 2"
  log 'level 3' do
    level3
  end
end

def level3
  space_ident
  puts"In Level 3"
end

  log 'level 1' do
    level1
  end