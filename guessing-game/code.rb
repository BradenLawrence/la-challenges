require 'pry'

puts <<~INTRO
  Terminal Telepathy
  ------------------
  I can sense a lingering telepathic energy from you...
  Let's test your ability to read my mind!
INTRO

selection = nil
difficulty = nil
while selection.nil? do
  puts "Select your difficulty ('easy' or 'hard')"
  print "> "
  selection = gets.chomp.downcase
  case selection
  when "easy"
    difficulty = 10
  when "hard"
    difficulty = 20
  else
    puts "Sorry, that difficulty setting is unsupported. Please try again."
    selection = nil
  end
end

answer = 1+rand(difficulty)
guess = nil
attempts = 0

binding.pry

while guess != answer do
  attempts += 1
  puts "I'm thinking of a number between 1 and #{difficulty}. What is it?"
  print "> "
  guess = gets.chomp.to_i
  if guess == answer
    puts "Congratulations! You got it right!\nNumber of guesses: #{attempts}"
  else
    puts "Sorry, try again."
  end
end
