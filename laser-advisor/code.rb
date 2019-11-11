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

laser_arsenal = laser_arsenal.sort_by {|obj| obj[:range]}
puts laser_arsenal
puts "Welcome to the Blast-o-matic!\nHow far away is your target?"
print "> "
target_distance = gets.chomp
