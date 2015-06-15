require 'minitest'
require 'minitest/autorun'
require './board'

class BoardTest < MiniTest::Test

  def setup
    @board = Board.new
  end

  def test_board_class_exists
    assert Board
  end

  #def test_board_starts_with_3x3_grid_of_empty_spaces 
  # @board = Board.new
  # assert_equal 3, @board.grid.length
  # assert_equal 3, @board.grid[0].length
  # assert @board.all?{|row| row.all?{|space| space == ' ' }}
  #end
  # I decided the above test was doing too much, so I split it up

  def test_board_starts_with_collection_of_spaces
    assert @board.spaces.is_a?(Array)
  end

  def test_there_are_nine_spaces
    assert_equal 9, @board.spaces.length
  end

  def test_the_spaces_are_in_3_rows
    assert_equal 3, @board.rows.length
  end

  def test_the_spaces_are_in_3_columns
    assert_equal 3, @board.columns.length
  end

  def test_the_spaces_all_start_empty
    assert @board.spaces.all?{|space| space == ' ' }
  end

  def test_the_empty_board_can_display
    display = " | | \n" + # \n needed to add newline 
              "-+-+-\n" +
              " | | \n" + 
              "-+-+-\n" +
              " | | \n"
    assert_equal display, @board.display
  end

  def test_x_can_be_placed_on_empty_board
    assert @board.place('X', 1, 1)
  end

  def test_marker_cannot_be_placed_in_filled_space
    @board.place('X', 1, 1)
    refute @board.place('O', 1, 1)
  end

  def test_non_empty_board_can_display
    display = " | | \n" + # \n needed to add newline 
              "-+-+-\n" +
              " |X| \n" + 
              "-+-+-\n" +
              " | | \n"
    @board.place('X', 1, 1)
    assert_equal display, @board.display
  end

end