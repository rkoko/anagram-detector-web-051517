require 'pry'
# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word=word
  end

  def match(anagram_array)
  #  binding.pry
    anagrams=[]
    anagram_array.each do |anagram|
      char_array = anagram_array.collect  {|anagram| anagram.chars}
        char_array.each do |char|
          if char.sort == @word.chars.sort
            anagrams<<char.join
          end
        end
          return anagrams
      end

end
end
