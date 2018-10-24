require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../player")
require_relative("../hidden_word")

class GameTest < MiniTest::Test

  def setup
    @player1 = Player.new("Bill", 10)
    @hidden_word1 = Hidden_word.new("hangman")
    @game = Game.new(@player1, @hidden_word1)
  end

  def test_get_player
    expected = @player1
    actual = @game.player
    assert_equal(expected, actual)
  end

  def test_get_hidden_word
    expected = @hidden_word1
    actual = @game.hidden_word
    assert_equal(expected, actual)
  end

  def test_guessed_letters
    expected = []
    actual = @game.guessed_letters
    assert_equal(expected, actual)
  end


end
