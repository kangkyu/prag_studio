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

class Game
  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.count} players in #{@title}:"
    @players.each do |player|
      puts player
    end
  end
end

# We currently have three Player objects that we created this way:

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

# The objective is to be able to run this code:

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

# and get this output:
=begin

There are 3 players in Knuckleheads: 
I'm Moe with a health of 100 and a score of 103.
I'm Larry with a health of 60 and a score of 65.
I'm Curly with a health of 125 and a score of 130.

=end
