d6 = [1,2,3,4,5,6]
roll = 2
input = nil
while input != "S" do
  results = []
  roll.times do
    results.push( d6[rand(6)] )
  end
  puts results
  input = gets.chomp
end
