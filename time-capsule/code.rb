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
  else
    # If they entered an item, store that item in the time capsule.
    time_capsule << input
  end
end

# Once finished, print out the contents of the time capsule.
users_box = %Q(
  #{name}'s Chrono-box Contents
  ------------------------------------------\n)
time_capsule.each_with_index do |item, i|
  users_box << "  #{i+1}) #{item}\n"
end
puts users_box
