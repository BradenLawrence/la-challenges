supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"

input = ""
while input != "done" do
  print "Please enter a supply (or 'done'): "
  input = gets.chomp

  if input != "done"
    supply_list += "* #{input}\n"
  end
end

puts "\n\n"
puts supply_list
