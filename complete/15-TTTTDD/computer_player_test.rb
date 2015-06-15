require 'minitest'
require 'minitest/autorun'
require './computer_player'

class ComputerPlayerTest < MiniTest::Test

  def test_computer_player_exists
    assert ComputerPlayer
  end
end
