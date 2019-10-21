d6 = [1,2,3,4,5,6]
roll = 2
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
