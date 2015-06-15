require 'minitest'
require 'minitest/autorun'
require './game'

class GameTest < MiniTest::Test

  def test_game_exists
    assert Game
  end
end