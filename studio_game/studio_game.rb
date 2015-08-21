# The goal of this exercise is to print out info about our initial player and a list of all the players.

# Each player has a name (a string) and an initial health value (an integer number).

=begin
larry's health is 60

Players: 
  larry
  curly
  moe
=end


# The name of our first player is "larry" (he prefers the lowercase pronunciation). Create a variable to remember that name. In other words, assign the player's name to the variable.

# Larry's initial health value is 60. Create a second variable and assign the health value to it.

name = "larry"
health_value = 60

# Next, using those two variables, create the single-quoted string "larry's health is 60" and print it out to the console

puts name + '\'s health is ' + health_value.to_s

# All that escaping and concatenation gets kinda tedious, doesn't it? Let's change the single-quoted string to a double-quoted string and substitute (interpolate) the name and health values into the string.

puts
puts "#{name}'s health is #{health_value}"

# How would you change the double-quoted string to triple Larry's health?

puts
puts "#{name}'s health is #{health_value * 3}"

puts
puts "#{name}'s health is #{health_value / 9}"
puts "#{name}'s health is #{health_value / 9.0}"

# try 1
puts \
"Players: 
  larry
  curly
  moe"

# try 2
puts "Players:\n\tlarry\n\tcurly\n\tmoe"

# try 3
name1 = 'larry'
name2 = 'curly'
name3 = 'moe'

puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"
