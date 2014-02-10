# Problem 1
#
class StringParser
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def unique?
    !repeating_character?
  end

  def repeating_character?
    word.chars.any? { |letter| word.scan(/#{letter}/).count > 1 }
  end

  def reverse
    letters = word.chars
    new_word = ""
    new_word += letters.pop until letters.none?
    new_word
  end

  def uniq
    word.chars.each_with_object([]) do |letter, uniqs|
      next if uniqs.include? letter
      uniqs << letter
    end.join
  end
end

