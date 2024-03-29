input_file = ARGV[0] or abort "ERROR! Need a file name!"

def print_all(f)
  puts f.read()
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First lets print the whole file:"
puts

print_all(current_file)

puts "Now lets rewind the tape"

rewind(current_file)

puts "Lets print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += current_line
print_a_line(current_line, current_file)

current_line += current_line 
print_a_line(current_line, current_file)
