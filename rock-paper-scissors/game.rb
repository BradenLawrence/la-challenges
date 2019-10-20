playbook = ["r","p","s"]
puts "Alright kid, I hope you're ready for this. \nThis is shaping up to be the \
fight of the century!\nRemind me, what's your stage name again?"
stage_name = gets.chomp
puts "Alright #{stage_name}, what kind of moves can we expect to see tonight?\n\
Rock (r), Paper (p), or Scissors (s)?"
player_choice = gets.chomp
puts "Let's get ready to rumble!\n"
if playbook.index(player_choice).nil?
  # Player's choice was not in the playbook
  puts "Whoa, we've never seen moves like that!\nUnfortunately, the judges say \
that move is illegal in this state.\n#{stage_name} is disqualified!"
else
  # Announce player choice
  case player_choice
  when "r"
    puts "#{stage_name} opens with a powerful ROCK jab!"
  when "p"
    puts "#{stage_name} wraps it up with a PAPER deflection!"
  when "s"
    puts "#{stage_name} cuts it up with a SCISSORS hold!"
  end
  # Announce computer choice
  com_choice = playbook[rand(3)]
  case com_choice
  when "r"
    puts "The computer counters with an earthshattering ROCK jab!"
  when "p"
    puts "Not to be outdone, the computer attempts a PAPER deflection!"
  when "s"
    puts "Seeing an opening, the computer sneaks in a SCISSORS hold!"
  end
  # Determine winner
  if player_choice == com_choice
    puts "It's a clash of the titans, folks!\nWith no clear winner, the judges \
are forced to declare this match a TIE!"
  elsif playbook.index(player_choice)+1 == playbook.index(com_choice)   ||
        playbook.index(player_choice)   == playbook.index(com_choice)+2
        # First comparison handles rock (index 0) and paper (1)
        # Ex: the player's paper (1)+1 == the computer's scissors (2),
          # so computer wins
        # Second comparison handles scissors (2), which will only be true if the
          # computer picks rock (0)
    puts "The computer wins!!!"
  else
    puts "#{stage_name} wins!!!"
  end
end
