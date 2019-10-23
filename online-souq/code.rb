# * Greet the shopper and take their name. Store this as `name`.
puts <<~INTRO
  Cyber-Souq
  ----------
  Welcome to the cyber-souq cart!
  Could I get your name?
INTRO
name = gets.chomp
# * Ask the user what they want to add to their shopping cart. Here is the kicker. They must ask for something from the following items. Programmers like to start out small before moving into more complex things, so the list of possible items is small! Here is a list of possible items they can choose from. If they are not on the list, the user should be notified so:
#
# ```
# * old paperback book
# * potato
# * red onion
# * dried lemon
# * frankincense
# * moon dust
# * saffron
# * glass spice jar
# * red fabric
# * orange fabric
# * handicrafts
# * small Persian rug
# * used medium space suit
# * heffalump shag rug
# * woozle hide purse
# ```
