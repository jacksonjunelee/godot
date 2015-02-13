class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def piglatinize
    if @original_word.start_with?('a', 'e', 'i', 'o', 'u')
      @original_word << "way"
    elsif
      @original_word.split('').rotate.join('') + 'ay'

      original_word.split('').rotate(2).join('') + 'ay'

    end
  end
end
