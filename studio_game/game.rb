require_relative 'player.rb'

class Game
  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(a_player)
    @players << a_player
  end

  def play
    puts "There are #{@players.count} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end
