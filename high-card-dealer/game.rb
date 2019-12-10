require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"

puts 'GAME START'

deck = Deck.new

hand1 = Hand.new(deck.deal(4))
hand2 = Hand.new(deck.deal(4))

binding.pry

# Your game logic here.
# Shift 4 cards into a new Hand object 2 times
# Define parameters for number of cards dealt and number of players
# Compare total values of hand objects
# Decide winner!
