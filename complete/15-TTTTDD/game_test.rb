require 'minitest'
require 'minitest/autorun'
require './game'

class GameTest < MiniTest::Test

  def test_game_exists
    assert Game
  end

  def test_game_starts_with_two_players
    @game = Game.new('player_1', 'player_2')
  end
end