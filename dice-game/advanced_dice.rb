puts "Dice-o-matic\n------------\n"
# Determine faces
user_sides = 0
while user_sides < 1 do
  puts "How many sides does your die have?"
  print "> "
  user_sides = gets.chomp.to_i
  if user_sides < 1
    puts "Sorry, you must enter a number greater than zero."
  end
end
die = []
user_sides.times do |face|
  die.push(face+1)
end

user_rolls = nil
roll = nil

input = nil
puts "Rolling a six sided die twice..."
while input != "S" do
  results = []
  roll.times do
    results.push( d6[rand(6)] )
  end
  total = results.reduce(:+)
  puts "Roll results: #{results.join(', ')}\n" +
       "Total: #{total}\n\n"                   +
       "Press 'Enter' to roll again, or 'S' to stop."
  input = gets.chomp.upcase
end
