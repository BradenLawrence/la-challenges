# create a new variable that will hold our safety list
supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"

# loop until the user is done entering supplies
input = ""
while input != "done" do
  # ask the user for a supply, or if they are done
  print "Please enter a supply (or 'done'): "

  # get the supply
  input = gets.chomp

  # add the supply to our list
  unless input == "done"
    supply_list += "* #{input}\n"
  end
# end loop
end

# print the safety list
puts "\n\n"
puts supply_list

# create a variable that will hold the total cost
total_cost = 0.00

# loop until the user is done entering costs
input = nil
while input != "done" do
  # print out the current total cost
  puts "\nThe current total is: $ #{total_cost}"

  # ask the user for a cost, or if they are done
  print "What is the cost of the item? (enter 'done' when finished)\n> "

  # get the cost
  input = gets.chomp

  # add the cost to the total
  if input != "done"
    total_cost += input.to_f
  end

# end loop
end

# print the final total cost
puts "\n\n"
puts "The total is: $ #{total_cost}"
