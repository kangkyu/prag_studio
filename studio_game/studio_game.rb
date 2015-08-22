# a player

# state
# - name
# - health

# behavior
# - say_hello

class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    # puts "I'm #{name.capitalize} with a health of #{health} as of #{time}."
  end

  def to_s
    "I'm #{@name} with a health of #{@health} as of #{time}."
  end

  def time
    Time.new.strftime("%I:%M:%S")
  end
end

player1 = Player.new("larry", 60)
puts player1

player2 = Player.new("curly", 125)
puts player2

player3 = Player.new("moe")
puts player3

player4 = Player.new("shemp", 90)
puts player4

# Don't Ask, Tell
# don't ask the object for its state,
# tell the object what to do
