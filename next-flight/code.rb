flights = [2,5,7.5,8.5,9,10,11.5,13.5,14.5,17,18,19,24]
latest = flights.max
journey = %Q(
  ***DON'T STOP...BELIEVIN'!***

  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere

  A singer in a smoky room
  A smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on

  Strangers waiting, up and down the boulevard
  Their shadows searching in the night
  Streetlights people, living just to find emotion
  Hiding, somewhere in the night.
)

puts %Q(
  Howdy! Welcome to Crazy Neds Discount Space Travel!
  What time would you like to leave?
)

user_depart = nil
depart_prompt = true
while depart_prompt
  print "> "
  user_depart = Float(gets) rescue nil
  if user_depart.nil? || !user_depart.between?(0, latest)
    puts "Sorry, that time is invalid. Please try again."
  else
    depart_prompt = false
  end
end

next_flight = flights.detect { |i| i >= user_depart }
puts %W(
  You should catch Flight \##{flights.index(next_flight)+1},
  which leaves at #{next_flight}
).join(" ")
if flights.index(next_flight) == 12
  puts journey
end
