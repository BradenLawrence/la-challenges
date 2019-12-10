class Hand
  attr_reader :name, :cards
  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def value
    @cards.reduce(0) {|total, card| total += card.value}
  end
end
# your code here
# Initialize with an array of card objects
# method that returns total value of cards
# Players represented by instances of hand
# Limit of 4 cards
