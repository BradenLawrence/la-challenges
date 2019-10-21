# create a variable that will hold the total cost
total_cost = 0.0

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
  total_cost = total_cost + input.to_f

# end loop
end

# print the final total cost
puts "\n\n"
puts "The total is: $ #{total_cost}"
