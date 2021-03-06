puts <<~INTRO
  Cyber-Souq
  ----------
  Welcome to the cyber-souq cart!
  Could I get your name?
INTRO
print "> "
name = gets.chomp
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
unavailable = []
while selection != "done" do
  print "> "
  selection = gets.chomp.downcase
  case selection
  when "catalog"
    puts "\nCatalog\n----------------------"
    catalog.each_with_index { |item, i| puts "#{i+1}) #{item}" }
    puts <<~ITEMS

      Items can be added to your cart by name or by number.
      What would you like to purchase?
    ITEMS
  when "done"
    puts "Thanks for shopping with us, #{name}! Here are your items:"
    puts "\n#{name}'s Shopping Cart\n----------------------"
    cart.each_with_index { |item, i| puts "#{i+1}) #{item}" }
    unless unavailable.empty?
      puts <<~MISSING_ITEMS

        We are sorry that a few of the items you searched for were unavailable.
        We will try to add them to our stocks in the near future!

        #{name}'s Item Requests
        ----------------------
      MISSING_ITEMS
      unavailable.each_with_index { |item, i| puts "#{i+1}) #{item}" }
    end
  else
    if catalog.include?(selection)
      cart << selection
      puts "Added #{selection}\n\nWould you like anything else?"
    elsif catalog[selection.to_i-1] && selection.to_i > 0
      cart << catalog[selection.to_i-1]
      puts "Added #{catalog[selection.to_i-1]}\n\nWould you like anything else?"
    else
      puts <<~SORRY
        Sorry, we don't have that.
        Type 'catalog' to see a list of available items.\n
        Would you like anything else?
      SORRY
      unavailable << selection
    end
  end

end
