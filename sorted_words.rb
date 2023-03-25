# (2) Write a program called sorted_words.rb.  It should prompt the user for words and add each to an array.  The user should be able to add as many words as they like, until they just hit enter to return a blank word. Then sort the array using the sort method and print it out. 
sort_me = []
puts "Welcome to the Sortometer where you can sort your words aplphabetically!\n To sort, just press enter!"

while sort_me.length > -1
    puts "Please add a word: "
    word = gets.chomp
    if word == ""
        break
    end
    sort_me.push(word)
end

print "#{sort_me.sort}\n"