class Game
  attr_accessor :turn, :player1, :player2
  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end
end