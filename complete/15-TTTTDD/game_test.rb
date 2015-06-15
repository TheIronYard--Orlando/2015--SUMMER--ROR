require 'minitest'
require 'minitest/autorun'
require './game'

class GameTest < MiniTest::Test

  def setup
    @game = Game.new('player_1', 'player_2')
  end

  def test_game_exists
    assert Game
  end

  def test_game_starts_with_two_players
    assert @game
  end

  def test_new_game_has_new_board
    assert @game.board.is_a?(Board)
  end

  def test_game_starts_by_displaying_empty_board
    assert_output(/#{@game.board.display}/) { @game.start }
    # http://stackoverflow.com/questions/26854048/ruby-minitest-assert-output-syntax
    # I changed the argument to a regular expression once the output included both
    # the board and the player name (below test)
  end

  def test_game_starts_by_prompting_player_one_to_move
    assert_output(/#{@game.player_1}'s turn/) { @game.start }
  end

  # the below test is really superseded by the one after it
  #def test_game_move_places_marker_on_board
  #  assert @game.move(1, 1)
  #end

  def test_first_move_places_x_on_board
    @game.move(1, 1)
    assert @game.spaces.include?('X')
  end

  def test_second_move_places_o_on_board
    @game.move(1, 1)
    @game.move(2, 1)
    assert @game.spaces.include?('O')
  end

  def test_after_first_player_moves_board_is_displayed
    assert_output(/#{@game.board.display}/) { @game.move(1, 1) }
  end

  def test_after_first_player_moves_second_player_prompted
    assert_output(/#{@game.player_2}'s turn/) { @game.move(1, 1) }
  end
end