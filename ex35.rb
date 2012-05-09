def prompt()
  print ">"
end


def gold_room()
  puts "This room is full of gold. How much do you take?"
  
  prompt; next_move = gets.chomp

  if /^[0-9]+$/.match(next_move)
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy.  You win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end

end

def bear_room()
  puts "There is a bear in here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in fron t of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
  
  while true
    prompt; next_move = gets.chomp
    
    if /honey/i.match(next_move)
      dead("The bear looks at you then slaps your face off.")
    elsif /.?(taunt|yell|shout|scream|smack|angry|mean|punch|attack|kick|hit|spit|scratch|slap|bite).?/i.match(next_move) and not bear_moved
      puts  "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif not /.?(walk|through|thru|go|open|pass|door).?/i.match(next_move) and bear_moved
      dead("The bear gets pissed off and chews you e leg off.")
    elsif /.?(walk|through|thru|go|open|pass|door).?/i.match(next_move) and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end

  end

end

def cthulu_room()
  puts "Here you see the great evil Cthulu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for you life or eat your head?"
  
  prompt; next_move = gets.chomp
  
  if /.?flee.?/i.match(next_move)
    start()
  elsif /(.?eat.?|.?head.?)/i.match(next_move)
    dead("Well that was nasty.")
  else
    cthulu_room()
  end

end

def dead(why)
  puts "#{why} Good job!"
  Process.exit(0)
end

def start()
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "left"
    bear_room()
  elsif next_move.include? "right"
    cthulu_room()
  else
    dead("You stumble around the room until you starve.")
  end

end

start()
