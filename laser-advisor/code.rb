laser_arsenal = [
  {name: "blaster",         range: 200},
  {name: "helium neon",     range: 180},
  {name: "nuclear pumped",  range: 170},
  {name: "krypton",         range: 170},
  {name: "co2",             range: 160},
  {name: "coil",            range: 150},
  {name: "strontium vapor", range: 140},
  {name: "ruby",            range: 130},
  {name: "xenon ion",       range: 120},
  {name: "free electron",   range: 110},
  {name: "gas dynamic",     range:  95},
  {name: "nitrogen",        range:   0}
]

puts "Welcome to the Blast-o-matic!\nHow far away is your target?"
print "> "
target_distance = Float(gets) rescue -1

within_range = laser_arsenal.detect {|laser| laser[:range] <= target_distance}

unless within_range.nil?
  puts "Firing the #{within_range[:name]} laser!"
else
  puts "Sorry, that range is invalid"
end