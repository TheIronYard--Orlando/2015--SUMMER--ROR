require './board'
class ComputerPlayer

  def initialize(marker)
    @marker = marker
  end

  def move(board)
    winning_move_for(board) || blocking_move_for(board) ||
    setup_winning_move_for(board) || random_legal_move_for(board)
  end

  def to_s
    "Computer (playing #{@marker})"
  end
  
  private

    def opponent_marker
      @marker == 'X' ? 'O' : 'X'
    end

    def winning_move_for(board)
      board.winning_move_for(@marker)
    end

    def blocking_move_for(board)
      board.winning_move_for(opponent_marker)
    end

    def setup_winning_move_for(board)
      board.setup_winning_move_for(@marker)
    end

    def random_legal_move_for(board)
      legal = false
      until legal
        row, column = rand(3), rand(3)
        legal = board.legal_move?(row, column)
      end
      [row, column]
    end
end