require './board'
class ComputerPlayer

  def initialize(marker)
    @marker = marker
  end

  def move(board)
    legal = false
    until legal
      row, column = rand(2), rand(2)
      legal = board.legal_move?(row, column)
    end
    [row, column]
  end
end