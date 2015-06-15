require 'minitest'
require 'minitest/autorun'
require './computer_player'

class ComputerPlayerTest < MiniTest::Test

  def test_computer_player_exists
    assert ComputerPlayer
  end

  def test_computer_player_initialized_with_marker
    @player = ComputerPlayer.new('X')
  end

  def test_computer_player_can_make_move_on_board
    @player = ComputerPlayer.new('X')
    row, column = @player.move(Board.new)
    assert (0..2).include?(row)
    assert (0..2).include?(column)
  end

  def test_computer_player_makes_legal_move_on_board
    @board = Board.new
    @board.place('X', 1, 1)
    @player = ComputerPlayer.new('O')
    row, column = @player.move(@board)
    refute_equal 1, row
  end
end
