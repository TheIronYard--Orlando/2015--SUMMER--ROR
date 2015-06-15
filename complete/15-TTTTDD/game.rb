require './board'
class Game

  attr_reader :board, :player_1, :player_2

  def initialize(player_1_name, player_2_name)
    @player_1 = player_1_name
    @player_2 = player_2_name
    @board = Board.new
    @current_marker = 'X'
  end

  def start
    puts @board.display
    puts "#{player_1}'s turn"
  end

  def move(row, column)
    @board.place(@current_marker, row, column)
    puts @board.display
    puts "#{@player_2}'s turn"
    switch_current_marker!
  end

  def spaces
    board.spaces
  end

  private

    def switch_current_marker!
      if @current_marker == 'X'
        @current_marker = 'O'
      else
        @current_marker = 'X'
      end
    end
end