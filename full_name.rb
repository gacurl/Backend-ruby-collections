# (1) Write a program which asks for a person's first name, then middle, then last.  It should store each of these parts in an array. Finally, it should greet the person using their full name.  Call the program full_name.rb.

full_name = []
# get first name and remove whitespace
puts "Hi there. What's your first name? "
first = gets.chomp.strip

# since some folks don't have a middle name
# if y, get middle name and remove whitespace
# if n, keep it moving
puts "Do you have a middle name? (y/n)"
middle = gets.chomp.strip
if middle == "y"
    puts "\tWhat's your middle name? "
    middle = gets.chomp.strip
else
    middle = nil
end

# get last name and remove whitespace
puts "And your last name? "
last = gets.chomp.strip

# items into array - compact! method removes nil value (@line 17)
full_name.push(first, middle, last).compact!
#format array items into greeting sentence
puts "Hello. It's very nice to meet you, #{full_name.join(" ")}."