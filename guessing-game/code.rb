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
