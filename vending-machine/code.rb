items_we_have = "chips popcorn skittles granola mentos gum cheetos m&ms"

puts "Hello! Enter the name of the item you would like from the vending machine."
selection = gets.chomp.downcase
location = items_we_have.index(selection)
if !!location
  puts "Item index:"
  puts location
else
  puts "Sorry, we don't have that item"
end
