class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
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

# We currently have three Player objects that we created this way:

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

# Then, once we have our player objects in an array, we can iterate through them and do the same thing to each player. We'll start by iterating through them and printing out each player's information like this:
=begin

There are 3 players in the game:
I'm Moe with a health of 100 and a score of 103.
I'm Larry with a health of 60 and a score of 65.
I'm Curly with a health of 125 and a score of 130.

=end

players = [player1, player2, player3]
players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

# Later on we'll make it more random. Here's an example of the output you're aiming for:
=begin

Moe got blammed!
Moe got w00ted!
Moe got w00ted!
I'm Moe with a health of 120 and a score of 123.
Larry got blammed!
Larry got w00ted!
Larry got w00ted!
I'm Larry with a health of 80 and a score of 85.
Curly got blammed!
Curly got w00ted!
Curly got w00ted!
I'm Curly with a health of 145 and a score of 150.

=end
