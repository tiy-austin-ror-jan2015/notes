class Deck
  attr_reader :cards
  def initialize
    @cards = ((1..13).to_a * 4).shuffle
  end

  def count
    @cards.count
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def draw
    @cards.shift
  end
end
