require './board'
class Game

  attr_reader :board

  def initialize(player_1_name, player_2_name)
    @board = Board.new
  end
end