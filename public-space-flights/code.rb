# YOUR CODE GOES HERE

adult_price = 100
child_price = adult_price / 2
adult_tickets = 0
child_tickets = 0
dehydrated_banana = 1.27
tofu_cake = 4.17
cheese_spread = 3.79
dehydrated_ice_cream_sandwich = 0.75

puts "Welcome to Crazy Ned's Discount Space Tours!
We offer premium tours to The Moon, Mars, Ganymede, and Neptune for travelers of all ages!
Adult tickets are just $#{adult_price} and children's tickets are only $#{child_price}!"

puts "How many adult tickets would you like to purchase?"
adult_tickets = gets.chomp.to_i

puts "And how many child tickets would you like to purchase?"
child_tickets = gets.chomp.to_i

puts "Wonderful! That's #{adult_tickets} adult tickets and \
#{child_tickets} child tickets, for a grand total of $#{adult_tickets*adult_price + child_tickets*child_price}."

puts "We offer a huge selection of in-flight meals for reasonable prices.
Here are a few recent orders:"
puts "- Two tofu cakes and two dehydrated ice cream sandwiches"
puts "Total cost: $#{(2*tofu_cake) + (2*dehydrated_ice_cream_sandwich)}"
puts "- Eight packets of cheese_spread and a dehydrated_banana"
puts "Total cost: $#{(8*cheese_spread) + dehydrated_banana}"
puts "- Three of each item on the menu"
puts "Total cost: $#{3*(dehydrated_banana+tofu_cake+cheese_spread+dehydrated_ice_cream_sandwich)}"
