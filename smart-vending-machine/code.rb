puts "Dispense-o-tron\n----------------\nHello! What can I get for you?"
print "> "
selection = gets.chomp
puts "Sure thing! How many #{selection} would you like?"
quantity = 0
while quantity<1 do
  print "> "
  quantity = gets.chomp.to_i
  if quantity<1
    puts "Sorry, you must enter a number greater than zero."
  end
end
quantity.times do
  puts selection
end
puts "Have a nice day!"
