require './board'
class Game

  attr_reader :board, :player_1, :player_2

  def initialize(player_1_name, player_2_name)
    @player_1 = player_1_name
    @player_2 = player_2_name
    @board = Board.new
    @current_marker = 'X'
    @current_player = @player_1
  end

  def start
    display_current_conditions
  end

  def move(row, column)
    @board.place(@current_marker, row, column)
    switch_current_marker!
    display_current_conditions
  end

  def spaces
    board.spaces
  end

  private

    def switch_current_marker!
      if @current_marker == 'X'
        @current_marker = 'O'
        @current_player = @player_2
      else
        @current_marker = 'X'
        @current_player = @player_1
      end
    end

    def display_current_conditions
      puts @board.display
      puts "#{@current_player}'s turn"
    end

end