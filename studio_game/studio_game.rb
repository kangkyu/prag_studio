name1 = 'larry'
health1 = 60
# puts "#{name1.capitalize} has a health of #{health1}."

name2 = 'curly'
health2 = 125
# puts "#{name2.upcase} has a health of #{health2}."

name3 = 'moe'
health3 = 100
# text = "#{name3.capitalize} has a health of #{health3}."
# puts text.center(50, '*')

name4 = 'shemp'
health4 = 90
# formatted_name = name4.capitalize.ljust(30, '.')
# puts "#{formatted_name} #{health4} health"

# make this consistent - DRY principle
# we need to write a method

def player_info(name, health)
  # the last expression evaluated in the method
  "#{name.capitalize} has a health of #{health}."
end

puts player_info('larry', 60)
puts player_info('curly', 125)
puts player_info('moe', 100)
puts player_info('shemp', 90)
puts

=begin
# we want to be able to run this code:

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)

# and get this output:

I'm Larry with a health of 60.
I'm Curly with a health of 125.
I'm Moe with a health of 100.
I'm Shemp with a health of 90.
=end

def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

# define a new time method that returns a string representing the current hour of the day, minute of the hour, and second of the minute (e.g., "05:25:08").

def time
  Time.new.strftime("%I:%M:%S")
end

#
puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)
