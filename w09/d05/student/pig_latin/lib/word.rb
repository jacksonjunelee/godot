class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def piglatinize(word)
    word = @original_word
    if word.start_with?('a', 'e', 'i', 'o', 'u')
      word << "way"
    #   binding.pry
    # elsif original_word.start_with


    end
  end
end
