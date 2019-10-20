knife_juggling  = [2.10,0.77,5.00,1.00,3.00]
torch_juggling  = [6.00,3.50,7.00]
hand_balancing  = [2.00,1.00]
human_blockhead = [0.75,0.43]
performances    = [knife_juggling,torch_juggling,hand_balancing,human_blockhead]

puts "\nPART 1\n------------"
puts "Knife Juggling:"
puts format("%.2f", knife_juggling.reduce(0,:+))
puts "Torch Juggling:"
puts format("%.2f", torch_juggling.reduce(0,:+))
puts "Hand Balancing:"
puts format("%.2f", hand_balancing.reduce(0,:+))
puts "Human Blockhead:"
puts format("%.2f", human_blockhead.reduce(0,:+))
puts "Total tips:"
total = performances.flatten.reduce(0,:+)
puts format("%.2f", total)
puts "Average tip value:"
puts format("%.2f", total/performances.flatten.length)

puts "\nPART 2\n------------"
puts "For my next trick, I'll need a volunteer from the audience!"
puts "You there, what's your name?"
volunteer = gets.chomp
puts "Thanks for taking one for the team, #{volunteer}."
puts "Round of applause for #{volunteer} please!"
puts "Now #{volunteer}, tell me. What is your favorite number?"
fav_num = gets.chomp.to_f
puts "Excellent choice! Now, my partner and I will begin by juggling these"
puts "extremely sharp knives for #{fav_num.round} seconds. Hope we don't get tired!"
