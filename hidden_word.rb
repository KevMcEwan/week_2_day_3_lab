class Hidden_word

  attr_reader :word, :letter_present

  def initialize(word)
    @word = word
    @letter_present = false
  end

  # def return_indexes(letter, hidden_word)
  #   indexes = []
  #   for index in 0..(hidden_word.length) -1
  #     if hidden_word[index] == letter
  #       indexes.push(index)
  #     end
  #   end
  #   return indexes
  # end

  def display_word(guessed_letters)
    display_letters = []
    for letter in word.chars
    letter_to_push = "*"
      for guessed_letter in guessed_letters
        if guessed_letter == letter
          letter_to_push = letter
          @letter_present = true
        end
      end
    display_letters.push(letter_to_push)
    end
    return display_letters*""
  end






  # def hash_letters(word, indexes)
  #   array_word = word.chars
  #   for letter in array_word
  #     if indexes.include? word.index(letter)
  #       letter = "*"
  #     end
  #   end
  # end
    # return  array_word.to_s
  #
  #   word.each_char{ |x|
  #     if indexes.include? word.index(x)
  #        x = "*"
  #      end
  #    }
  # end



  # def display_word(guessed_letters)
  #   display_word = @word.clone.chars
  # end




end
