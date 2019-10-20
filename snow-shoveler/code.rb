pad_width   = 8
pad_length  = 20
snowfall    = rand(100).to_f
snow_on_pad = pad_width*pad_length*(snowfall/12).round
quote       = 0

puts "Last night's snowfall: #{snowfall} inches"
puts "Total snow: #{snow_on_pad} cubic feet"

if snow_on_pad.nil?
  puts "Something weird happened outside, but it wasn't snowfall."
else
  if    snow_on_pad >= 300
    quote = 150
  elsif snow_on_pad >= 150
    quote = 100
  elsif snow_on_pad >= 50
    quote = 50
  elsif snow_on_pad >  0
    quote = 20
  else
    quote = 0
  end
end

puts "Quote: $#{quote}"
