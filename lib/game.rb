require_relative 'player'

class Game
    attr_reader :current_player, :opposing_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
    @opposing_player = @players.last
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turn
    @current_player, @opposing_player = @opposing_player, @current_player
  end

  def attack
    @opposing_player.damage
  end

end
