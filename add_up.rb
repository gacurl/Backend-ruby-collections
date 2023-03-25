# (3) Write a program with a function add_up(i) .  It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum.  Call the function three times within the program, and each time print out the return value.  Call the program add_up.rb.

def add_up(i)
    sum = 0
    # if i = 5, how do I get all the numbers from 0 to 5? use a range, right?
    (1..i).each do |i|
        sum =  i + sum
    end
    puts sum
end

add_up(5)
add_up(3)
add_up(100)