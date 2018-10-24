require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")

class Hidden_WordTest < MiniTest::Test

  def setup
    @hidden_word1 = Hidden_word.new("hangman")
  end

  def test_get_word
    expected = "hangman"
    actual = @hidden_word1.word
    assert_equal(expected, actual)
  end

end
