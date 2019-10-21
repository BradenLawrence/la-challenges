puts "Dice-o-matic\n------------\n"

continue_program = nil
while continue_program != "S" do
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

  # Determine roll
  roll = 0
  while roll < 1 do
    puts "How many times would you like to roll?"
    print "> "
    roll = gets.chomp.to_i
    if roll < 1
      puts "Sorry, you must enter a number greater than zero."
    end
  end

  # Start rolling
  continue_rolling = nil
  puts "Rolling a #{user_sides} sided die #{roll} times..."
  while continue_rolling != "S" do
    results = []
    roll.times do
      results.push(  die[ rand(die.length) ]  )
    end
    total = results.reduce(:+)
    puts <<~output
      Roll results: #{results.join(', ')}
      Total: #{total}
      Press 'Enter' to roll again, or 'S' to stop.
    output
    print "> "
    continue_rolling = gets.chomp.upcase
  end

  puts <<~reset
    Would you like to roll with a different die?
    Press 'Enter' to create a new die or 'S' to stop.
  reset
  print "> "
  continue_program = gets.chomp.upcase
end
