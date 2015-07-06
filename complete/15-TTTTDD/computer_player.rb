require './board'
class ComputerPlayer

  def initialize(marker)
    @marker = marker
  end

  def move(board)
    winning_move_for(board) || blocking_move_for(board) ||
    setup_winning_move_for(board) || block_setup_move_for(board) ||
    center_if_open_for(board) || corner_if_open_for(board) ||
    random_legal_move_for(board)
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

    def block_setup_move_for(board)
      board.setup_winning_move_for(opponent_marker)
    end

    def center_if_open_for(board)
      [1, 1] if board.legal_move?(1, 1)
    end

    def corner_if_open_for(board)
      board.random_open_corner
    end

    def random_legal_move_for(board)
      board.random_legal_move
    end
end