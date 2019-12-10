require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"

puts 'GAME START'

deck = Deck.new
puts "There are #{deck.cards.size} cards in the deck\n"

hand1 = Hand.new('Player 1', deck.deal(4))
puts "#{hand1.name} was dealt #{hand1.summary}"

hand2 = Hand.new('Player 2', deck.deal(4))
puts "#{hand2.name} was dealt #{hand2.summary}"

puts "#{hand1.name}'s hand value: #{hand1.value}"
puts "#{hand2.name}'s hand value: #{hand2.value}"

def declare_winner(players)
  winners = players.sort_by {|player| player.value}.reverse
  if winners[0].value == winners[1].value
    return 'Tie!'
  else
    return winners.first.name
  end
end

puts "#{declare_winner([hand1, hand2])} wins the game!"

# Your game logic here.
# Shift 4 cards into a new Hand object 2 times
# Define parameters for number of cards dealt and number of players
# Compare total values of hand objects
# Decide winner!
