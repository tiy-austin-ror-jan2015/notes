class Player
  attr_accessor :cards, :score, :name
  def initialize(name)
    @name  = name
    @cards = Deck.new
    @score = 0
  end

  def to_s
    "Player #{name}"
  end
end
