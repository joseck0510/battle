require_relative 'player'

class Game

attr_reader :current_player

  def initialize(name1, name2)
    @players = [name1, name2]
    @current_player = name1
  end

  def name1
    @players.first
  end

  def name2
    @players.last
  end

  def current_player
    name1
  end

  def switch_turns
    @players = @players.reverse
  end

  def attack(player)
    player.damage_taken
  end
end
