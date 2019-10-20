adult_price = 120.80
child_price = 40.00
adult_tickets = 0
child_tickets = 0

puts "Welcome to Crazy Ned's Discount Space Travel Agency!
Use the table below to help plan your trip:
---------------------
| ADULTS: $120.80    |
| CHILDREN: $40.00   |
---------------------
How many adult tickets would you like to purchase?"
adult_tickets = gets.chomp.to_i
puts "Great! And how many child tickets would you like to purchase?"
child_tickets = gets.chomp.to_i
total = (adult_price * adult_tickets) + (child_price * child_tickets)
puts "Total: $#{format("%.2f", total)}"

even_split = total / adult_tickets
puts "Total cost per adult: $#{format("%.2f", even_split)}"
