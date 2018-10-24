require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../game")
require_relative("../player")

class Hidden_WordTest < MiniTest::Test

  def setup
    @player1 = Player.new("Bill", 10)
    @hidden_word1 = Hidden_word.new("hangman")
    @banana = Hidden_word.new("banana")
    @ban = Hidden_word.new("ban")
    @game = Game.new(@player1, @hidden_word1)
    @game.guessed_letters = ["a","g","x"]
  end

  def test_get_word
    expected = "hangman"
    actual = @hidden_word1.word
    assert_equal(expected, actual)
  end

  def test_display_word
    expected = "*a*a*a"
    actual = @banana.display_word(@game.guessed_letters)
    assert_equal(expected, actual)
  end

  # def test_return_indexes
  #   expected1 = [1,3,5]
  #   expected2 = [1]
  #   actual1 = @banana.return_indexes("a", @banana.word)
  #   actual2 = @ban.return_indexes("a", @ban.word)
  #   assert_equal(expected1, actual1)
  #   assert_equal(expected2, actual2)
  # end
  #
  # # def test_hash_letters
  # #   expected = "b*n*n*"
  # #   indexes = @banana.return_indexes("a", @banana.word)
  # #   actual = @banana.hash_letters(@banana.word, indexes)
  # # #   assert_equal(expected, actual)
  # # end



end
