puts "Dispense-o-tron\n----------------\nHello! What can I get for you?"
print "> "
selection = gets.chomp
puts "Sure thing! How many #{selection} would you like?"
quantity = 0
while quantity<1 do
  print "> "
  input = gets.chomp.downcase
  if input == "tons"
    quantity = rand(19)+1
  else
    quantity = input.to_i
  end
  if quantity<1
    puts "Sorry, I can't give an item #{quantity} times. Please try again."
  end
end
quantity.times do
  puts selection
end
puts "Have a nice day!"
