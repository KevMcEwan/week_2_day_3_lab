require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < MiniTest::Test


  def setup
    @player1 = Player.new("Bill", 10)
  end

  def test_get_name
    expected = "Bill"
    actual = @player1.name
    assert_equal(expected, actual)
  end

  def test_number_of_lives
    expected = 10
    actual = @player1.lives
    assert_equal(expected, actual)
  end


end
