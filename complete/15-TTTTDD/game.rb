require './board'
class Game

  attr_reader :board, :player_1

  def initialize(player_1_name, player_2_name)
    @player_1 = player_1_name
    @board = Board.new
    @current_marker = 'X'
  end

  def start
    puts @board.display
    puts "#{player_1}'s turn"
  end

  def move(row, column)
    @board.place(@current_marker, row, column)
    if @current_marker == 'X'
      @current_marker = 'O'
    end
  end

  def spaces
    board.spaces
  end
end