require './board'
class Game

  attr_reader :board, :player_1

  def initialize(player_1_name, player_2_name)
    @player_1 = player_1_name
    @board = Board.new
  end

  def start
    puts @board.display
    puts "#{player_1}'s turn"
  end
end