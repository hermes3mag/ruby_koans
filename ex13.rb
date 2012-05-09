first, second, third = ARGV

prompt = '>'

puts "First some preliminaries..."
puts "What is you name?"
print prompt
name = STDIN.gets.chomp()

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts " "
puts "Oh, and your name is #{name}"
