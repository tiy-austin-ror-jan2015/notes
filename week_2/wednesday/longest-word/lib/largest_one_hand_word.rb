# Given a dictionary, what is the largest word you can type using only your left hand
require_relative '../tale_of_two_cities.rb'

class LargestWord
  attr_accessor :hands

  def initialize(dict)
  	@hands = {
  		:left => 'qwertyasdfgzxcv',
  		:right => 'uiophjklbnm'
  	}
  end

  def dictionary
  	TALE_OF_TWO_CITIES.split
  end

  def type_with_right_hand?(word)
  	#find if each char in word is in hand[:right]
  	 # find if x(each char of word) is in y(hand[:right])
     # y.include?(x)
     # hand[:right].include?(each_char_of_word)
    type_with_one_hand?(:right, word)
  end

  def type_with_left_hand?(word)
  	type_with_one_hand?(:left, word)
  end

  def largest_word_in_dict(words, hand)
  	words.reverse.reduce('') do |acc, elem|
  	  if type_with_one_hand?(hand.to_sym, elem)
  	  	if elem.length >= acc.length
  	  		elem
  	  	else
  	  		acc
  	  	end
  	  else
  	  	acc
  	  end
  	end
  end

  private
  def type_with_one_hand?(hand, word)
    word.downcase.chars.all? { |char| hands[hand].include?(char) }
  end
end

