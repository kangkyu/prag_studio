class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health}."
  end

  def time
    Time.new.strftime("%I:%M:%S")
  end

  def w00t
    @health += 15
    puts "Curly got w00ted!"
  end

  def blam
    @health -= 10
    puts "Curly got blammed!"
  end
end

# Our goal is to write a Player class with w00t and blam methods, as well as a to_s method to easily print a player's information. In the end, we want to be able to run this code:

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3

# And get this result:
=begin
I'm Moe with a health of 100.
I'm Larry with a health of 60.
I'm Curly with a health of 125.
Curly got blammed!
I'm Curly with a health of 115.
Curly got w00ted!
I'm Curly with a health of 130.
=end
