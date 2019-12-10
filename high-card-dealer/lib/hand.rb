class Hand
  attr_reader :name, :cards
  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def value
    @cards.reduce(0) {|total, card| total += card.value}
  end

  def summary
    cards.map {|card| "#{card.rank}#{card.suit}"}.join(", ")
  end
end
# your code here
# Initialize with an array of card objects
# method that returns total value of cards
# Players represented by instances of hand
# Limit of 4 cards
