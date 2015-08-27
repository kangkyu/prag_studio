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

# In the end, we want to be able to run this code:

player2 = Player.new("larry", 60)
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2

# and get this output:
=begin

Larry
Lawrence
60
68
I'm Lawrence with a health of 60 and a score of 68.

=end
