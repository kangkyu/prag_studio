# We want the game to start by printing a welcome message. So in your studio_game.rb file, type in the Ruby code to print "Welcome!" to the screen. 

# Remember that irb always prints results to the screen, whereas in a Ruby program file you need to use puts to print results to the screen.

puts 'Welcome!'

puts
# Now, similar to what we did in the video, change your program to assign the welcome message to a variable named greeting, and print it uppercase three times in a loop.

greeting = 'Welcome!'

3.times do
  puts greeting.upcase
end

# strings, variables, methods, and blocks

puts
# After printing the greeting, it might be handy for the game to print the time it started. Use the built-in Time class to print the current time.

puts Time.new
