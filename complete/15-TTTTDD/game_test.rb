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
    assert_output(@game.board.display) { @game.start }
    # http://stackoverflow.com/questions/26854048/ruby-minitest-assert-output-syntax
  end
end