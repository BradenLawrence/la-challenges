flights = [2,5,7.5,8.5,9,10,11.5,13.5,14.5,17,18,19,24]

puts %Q(
  Howdy! Welcome to Crazy Neds Discount Space Travel!
  What time would you like to leave?
)

user_depart = nil
while !user_depart || user_depart < 0
  print "> "
  user_depart = Float(gets) rescue false
  if !user_depart || user_depart < 0
    puts "Sorry, that time is invalid. Please try again."
  else
    user_depart = user_depart.round(2)
  end
end

puts user_depart
