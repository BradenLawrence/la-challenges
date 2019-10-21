# PART 1
donations = 0
goal = 100
puts "Howdy folks, Crazy Ned's Discount Space Travel Agency has a lot of "     +
     "unaccounted expenses for things like 'legal fees' and 'explosions'.\n"   +
     "So to help ends meet, we are having a bake sale! One cupcake for each "  +
     "donation, amount doesn't matter!\nYou have no idea how many of these it "+
     "takes to pay for attorney fees.\nOur goal for today is $#{goal}.\n"      +                                        +
     "How much would you like to donate?"
while donations < goal
  donations += gets.chomp.to_f
  puts "Thank you! Next in line, please."
end
puts "That's all the cupcakes we have for today! Thanks everyone!"

# PART 2
extra = donations - goal
stretch_goal = 25

(extra/stretch_goal).round.times {
  puts "We made an extra $#{stretch_goal}!"
}
