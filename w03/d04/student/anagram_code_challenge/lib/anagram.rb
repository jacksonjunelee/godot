module Anagram

# attr_accessor :a

# def initialize(a)
#   @anagram = true
# end

#   def anagram?(a)
#     if object_one.shuffle.split('') == object_two.shuffle.split('')
#       @anagram == true
#     else
#       false
#     end
#   end

def anagram?(word1, word2)
  word1 = word.downcase.split('').sort.join
  word2 = word.downcase.split('').sort.join
  word1==word2
end

end
# ruby anagram.rb -d DICTSRC
