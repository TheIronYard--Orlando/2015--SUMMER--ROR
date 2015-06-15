require 'minitest'
require 'minitest/autorun'
require './computer_player'

class ComputerPlayerTest < MiniTest::Test

  def setup
    @board = Board.new
  end

  def test_computer_player_exists
    assert ComputerPlayer
  end

  def test_computer_player_initialized_with_marker
    @player = ComputerPlayer.new('X')
  end

  def test_computer_player_can_make_move_on_board
    @player = ComputerPlayer.new('X')
    row, column = @player.move(@board)
    assert (0..2).include?(row)
    assert (0..2).include?(column)
  end

  def test_computer_player_makes_legal_move_on_board
    @board.place('X', 1, 1)
    @player = ComputerPlayer.new('O')
    refute_equal [1, 1], @player.move(@board)
  end

  # I wanted to write a test to make computer win if possible,
  # but the board should know what space to go to win
  # so I'll write those tests first
  def test_computer_player_wins_if_possible
    @board.place('X', 1, 1)
    @board.place('X', 1, 2)
    @player = ComputerPlayer.new('X')
    assert_equal [1, 0], @player.move(@board)
  end

  def test_computer_blocks_opponent_win_if_computer_win_impossible
    @board.place('X', 1, 1)
    @board.place('O', 1, 2)
    @board.place('X', 0, 0)
    @player = ComputerPlayer.new('O')
    assert_equal [2, 2], @player.move(@board)
  end
end
