name = "Anthony Ortiz"
age = 44 #not a lie
height = 74#inches
weight = 189 #lbs
eyes = 'brown'
teeth = 'white'
hair = 'bald'

puts "Lets talk about %s." %name
puts "He's %d inches tall." %height
puts "He's %d pounds heavy."%weight
puts "He's got %s eyes and %s hair." %[eyes, hair]
puts "His teeth are usually %s depending on the coffee." %teeth

#this line is tricky try to get it exactly right
puts "If I add %d, %d, and %d I get %d."%[age,height,weight,age+height+weight]
