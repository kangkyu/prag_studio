
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

# if __FILE__ holds filename of this file
if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
