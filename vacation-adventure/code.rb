selection = rand(4)+1
if selection == 1
  puts "Grab your surf board, we're going dune sailing!"
elsif selection == 2
  puts "Hope you don't get motion sick, because today we're going anti-gravity!"
elsif selection == 3
  puts "Strap on your moon shoes, we're heading to the bounce-house!"
else
  puts "Looks like it's lava surfing today! Don't forget to bring a cool drink."
end
puts "Have fun out there!"


# Alternate solution:
# activities = ["dune sailing","anti-gravity", "bounce-house", "lava surfing"]
# selection = rand(activities.length)
# puts "Today's activity is #{activities[selection]}!"
