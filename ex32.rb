the_count = [1,2,3,4]
fruits = ['apples','oranges','pears','apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes throuh an array
for number in the_count
  puts "This is count #{number}"
end

# same as above but using a lock instead
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed arrays too
for i in change
  puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
elements = []

#for i in (0..5)
(0..5).each do |i|
  puts "Adding #{i} to the list"
  #push is a function that arrays understand
  elements.push(i)
end

#now we can puts them too 
for i in elements
  puts "Elements was #{i}"
end

#using the cycle
elements.cycle(1) {|x| puts elements{x}}

#try direct assignment
new_element = []
new_element = (0..10)
print new_element
for i in new_elements
  puts "New_elements is #{i}"
end
