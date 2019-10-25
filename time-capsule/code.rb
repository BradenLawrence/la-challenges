time_capsule = Array.new

# Greet the user and take their name. Store this name.
puts %Q(
  Chrono-box 9000
  ------------------------------------------\n
  Welcome! Are you ready to save some time?!
  Let's get started!
  Could I get your name please?\n
)
print "> "
name = gets.chomp

# Ask the user what they want to add to the time capsule.
puts %Q(
  Thanks #{name}!
  What items would you like to save in the
  Chrono-box for all eternity?
  (Type 'FINISHED' to stop)\n
)
adding_items = true
while adding_items
  print "> "
  input = gets.chomp
  case input.upcase
  when "FINISHED"
    # Give the user an option to type the command "FINISHED" which instructs the program to stop asking the user to add more items.
    adding_items = false
  when ""
  else
    # If they entered an item, store that item in the time capsule.
    puts "How many would you like to add?"
    entering_qty = true
    item = Array.new
    while entering_qty
      print "#{input} quantity: "
      quantity = gets.chomp.to_i
      if quantity <= 0
        puts "Sorry, that's an invalid amount. Please try again."
      else
        item << input
        item << quantity
        entering_qty = false
      end
    end
    time_capsule << item
  end
end

# Once finished, print out the contents of the time capsule.
users_box = %Q(
  #{name}'s Chrono-box Contents
  ------------------------------------------\n)
time_capsule.each_with_index do |item, i|
  users_box << "  #{i+1}) #{item[0]}  x#{item[1]}\n"
end
puts users_box
