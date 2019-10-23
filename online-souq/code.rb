# * Greet the shopper and take their name. Store this as `name`.
puts <<~INTRO
  Cyber-Souq
  ----------
  Welcome to the cyber-souq cart!
  Could I get your name?
INTRO
print "> "
name = gets.chomp
# * Ask the user what they want to add to their shopping cart. Here is the kicker. They must ask for something from the following items. Programmers like to start out small before moving into more complex things, so the list of possible items is small! Here is a list of possible items they can choose from. If they are not on the list, the user should be notified so:
catalog =
  ["old paperback book",  "potato",  "red onion",  "dried lemon",
   "frankincense",  "moon dust",  "saffron",  "glass spice jar",  "red fabric",
   "orange fabric",  "handicrafts",  "small Persian rug",
   "used medium space suit",  "heffalump shag rug",  "woozle hide purse"]
puts <<~PROMPT
  Nice to meet you #{name}!
  To see a list of available items, type 'catalog'.
  When you are done shopping, type 'done'.
  What would you like to purchase?
PROMPT
selection = nil
cart = []
while selection != "done" do
  print "> "
  selection = gets.chomp
  case selection
  when "catalog"
    puts <<~LIST
      Catalog
      ----------------------
      #{catalog.join(",\n")}

      What would you like to purchase?
    LIST
  when "done"
    # Display cart and outro
  else
    # Check if in catalog and add to cart
  end

end