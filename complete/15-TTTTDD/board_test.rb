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

  def test_board_can_find_3_in_a_row
    refute @board.has_3_in_a_row?('X')
    refute @board.has_3_in_a_row?('O')
  end

  def test_board_w_3_Xs_in_1st_row_has_3_in_a_row
    3.times{|n| @board.place('X', 0, n) }
    assert @board.has_3_in_a_row?('X')
  end

  def test_board_w_3_Os_in_1st_row_has_3_in_a_row
    3.times{|n| @board.place('O', 0, n) }
    assert @board.has_3_in_a_row?('O')
  end

  def test_3_in_a_row_finds_columns
    3.times{|n| @board.place('X', n, 1)}
    assert @board.has_3_in_a_row?('X')
  end

  def test_3_in_a_row_finds_diagonals
    3.times{|n| @board.place('O', n, n)}
    assert @board.has_3_in_a_row?('O')
  end

  def test_empty_board_not_filled
    refute @board.filled?
  end

  def test_board_is_filled
    9.times do |n| 
      marker = n % 2 == 0 ? 'X' : 'O'
      row = (n / 3) % 3
      column = n % 3
      @board.place(marker, row, column)
    end
    assert @board.filled?
  end

  def test_board_knows_when_3_in_a_row_impossible
    # fill the board in like this
    # XXO
    # OOX
    # XOX
    @board.place('X', 0, 0)
    @board.place('O', 0, 2)
    @board.place('X', 0, 1)
    @board.place('O', 1, 0)
    @board.place('X', 1, 2)
    @board.place('O', 1, 1)
    @board.place('X', 2, 0)
    @board.place('O', 2, 1)
    @board.place('X', 2, 2)
    assert @board.cannot_have_3_in_a_row?('X')
  end

  def test_marker_cannot_be_placed_outside_board
    refute @board.place('X', 3, 0)
  end

  def test_board_knows_empty_board_has_no_winning_move
    refute @board.winning_move_for('X')
  end

  def test_board_knows_when_there_is_winning_move
    @board.place('X', 0, 0)
    @board.place('X', 0, 1)
    assert_equal [0, 2], @board.winning_move_for('X')
  end
end