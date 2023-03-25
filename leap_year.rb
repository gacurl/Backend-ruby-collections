# (4) Write a program, leap_year.rb.  It will ask the user for a starting year and an ending year, and it will then print out all the leap years between them, including the starting or ending year if those are leap years. The rules for leap years are: A leap year is divisible by 4, except for years that are divisible by 100 -- those aren't leap years -- except for years that are divisible by 400, which ARE leap years.

puts "Let's do some leap year checking! Please enter a starting year: "
start_year = gets.to_i
puts "Please enter an ending year: "
end_year = gets.to_i

leap_years = []
non_leaps = []
(start_year..end_year).each do |year|
    if year % 400 == 0
        leap_years.push(year)
    elsif year % 4 == 0 && year % 100 != 0
        leap_years.push(year)
    else
        non_leaps.push(year)
    end
end

puts "The number of leap years from #{start_year} until #{end_year} is #{leap_years.length}."
puts "The leap years are #{leap_years.join(", ")}."