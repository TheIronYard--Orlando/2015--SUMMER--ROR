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
end
