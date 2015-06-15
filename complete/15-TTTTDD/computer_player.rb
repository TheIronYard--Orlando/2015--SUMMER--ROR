require './board'
class ComputerPlayer

  def initialize(marker)
    @marker = marker
  end

  def move(board)
    if winning_move = board.winning_move_for(@marker)
      [ winning_move[0], winning_move[1] ]
    elsif winning_move = board.winning_move_for(opponent_marker)
      [ winning_move[0], winning_move[1] ]
    else
      legal = false
      until legal
        row, column = rand(2), rand(2)
        legal = board.legal_move?(row, column)
      end
      [row, column]
    end
  end

  private

    def opponent_marker
      @marker == 'X' ? 'O' : 'X'
    end
end