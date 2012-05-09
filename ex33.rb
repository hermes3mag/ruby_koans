
def loop_func(limit, incr)

  i = 0
  numbers= []

  while i < limit
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += incr
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end

end 

def forloop_func(limit)

  numbers = []

  for i in (0..limit)

    puts "Numbers now: #{numbers}"
    numbers.push(i)
  end

end

#loop_func(7,2)
forloop_func(3)
