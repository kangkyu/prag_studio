# In this exercise, we'll give them some life and also add a fourth player. The goal is to print out each player's name and health with a slightly different format, like so:

=begin
Larry has a health of 60.
CURLY has a health of 125.
*************Moe has a health of 100.*************
Shemp........................... 90 health
=end

# Variables and Objects

name1 = "larry"
health1 = 60

# formatting task : capitalize the name.

name1.capitalize
puts "#{name1.capitalize} has a health of #{health1}."

name2 = "curly"
health2 = 125

puts "#{name2.upcase} has a health of #{health2}."

# change Curly's health variable to point to Larry's health variable and print out Curly's information again.

health2 = health1
puts "#{name2.upcase} has a health of #{health2}."

# Reassign Larry's health variable to be 30. Then print out the name and health of both players again.

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

# Use the documentation to find the method that centers a string. Note that the first parameter (the length) is required, but the second parameter for the character to use as padding is optional.

name3 = "moe"
health3 = 100

puts "#{name3.capitalize} has a health of #{health3}.".center(50, '#')

name4 = "shemp"
health4 = 90

puts "#{name4.capitalize.ljust(30, '.')} #{health4} health"

# all objects in Ruby have a to_s method that converts the object to its string representation. Using this tip, try chaining methods together to reverse the number 123 again.

puts r = 123.to_s.reverse
puts r.to_i
