class RubyString
  def initialize(sentence)
    @sentence = sentence
  end

  def string_length
    @sentence.delete(' ').length
  end

  def add_words(words)
    @sentence.concat(words)
  end

  def reverse_words
    @sentence.reverse
  end

  def downcase_string
    @sentence.downcase
  end

  def character_counter(letter)
    downcase_string.count(letter)
  end

  def turn_to_array
    @sentence.split(" ")
  end

  def longest_word
    turn_to_array.max_by(&:length)
  end

  def shortest_word
    turn_to_array.min_by(&:length)
  end

  def remove_vowels
    @sentence.gsub(/[aeiou]/,"")
  end

  def middle_word
    word = turn_to_array
    word_position = (turn_to_array.size) / 2
    word.values_at(word_position).join
  end

  def replace_word(index, word)
    sentence_array = turn_to_array
    sentence_array.map! { |w| w == sentence_array[index] ? word : w }.join(" ")
  end

  def switch_words(index, index2)
    sentence_array = turn_to_array
    first_word = sentence_array.find { |i| i == sentence_array[index] }
    second_word = sentence_array.find { |i| i == sentence_array[index2] }
    sentence_array.map { |w| w == sentence_array[index] ? second_word : w && w == sentence_array[index2] ? first_word : w }.join(" ")
  end
end
