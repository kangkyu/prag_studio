# The goal is to wind up with the following three Ruby program files:

# player.rb contains the code for the Player class
# game.rb contains the code for the Game class
# studio_game.rb contains the code for the main (driver) program

require_relative 'game.rb'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

=begin

There are 3 players in Knuckleheads: 
I'm Moe with a health of 100 and a score of 103.
I'm Larry with a health of 60 and a score of 65.
I'm Curly with a health of 125 and a score of 130.

=end
