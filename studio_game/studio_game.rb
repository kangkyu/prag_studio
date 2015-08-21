name1 = 'larry'
health1 = 60
puts "#{name1.capitalize} has a health of #{health1}."

name2 = 'curly'
health2 = 125
puts "#{name2.upcase} has a health of #{health2}."

name3 = 'moe'
health3 = 100
text = "#{name3.capitalize} has a health of #{health3}."
puts text.center(50, '*')

name4 = 'shemp'
health4 = 90
formatted_name = name4.capitalize.ljust(30, '.')
puts "#{formatted_name} #{health4} health"
