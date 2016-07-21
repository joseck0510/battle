class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def current_player
    player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_player
    @players = @players.reverse
    #@players[0], @players[1] = @players[1], @players[0]
  end

  # CLASS METHODS
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
