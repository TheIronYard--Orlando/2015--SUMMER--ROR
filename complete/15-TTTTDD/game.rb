require './board'
require './computer_player'
class Game

  attr_reader :board, :player_1, :player_2

  def initialize(player_1_name, player_2_name)
    @player_1 = computer_or_human(player_1_name, 'X')
    @player_2 = computer_or_human(player_2_name, 'O')
    @board = Board.new
    @current_marker = 'X'
    @current_player = @player_1
  end

  def self.automatic
    new('computer', 'computer').start
  end

  def start
    display_current_conditions(true)
    computer_move
  end

  def move(row, column)
    if @result
      abort @result
    else
      if @board.place(@current_marker, row, column)
        display_current_conditions
      else
        puts "That space is taken."
      end
      computer_move unless @result
    end
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

    def display_current_conditions(start = false)
      puts @board.display
      if @board.cannot_have_3_in_a_row?(@current_marker)
         @result = 'Tie'
      elsif @board.has_3_in_a_row?(@current_marker)
        @result = "#{@current_player} Wins!"
      else
        switch_current_marker! unless start
        @status = "#{@current_player}'s turn"
      end
      puts @result || @status
    end

    def computer_or_human(name, marker)
      if name == 'computer'
        ComputerPlayer.new(marker)
      else
        name
      end
    end

    def computer_move
      if @current_player.is_a?(ComputerPlayer)
        row, column = @current_player.move(@board)
        move(row, column)
      end
    end
end