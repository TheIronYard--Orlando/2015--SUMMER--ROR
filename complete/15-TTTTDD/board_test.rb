require 'minitest'
require 'minitest/autorun'
require './board'

class BoardTest < MiniTest::Test

  def test_board_class_exists
    assert Board
  end
end