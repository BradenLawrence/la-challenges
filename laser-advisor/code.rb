# laser_arsenal = {
#   blaster:          200,
#   helium_neon:      180,
#   nuclear_pumped:   170,
#   krypton:          170,
#   co2:              160,
#   coil:             150,
#   strontium_vapor:  140,
#   ruby:             130,
#   xenon_ion:        120,
#   free_electron:    110,
#   gas_dynamic:       95,
#   nitrogen:           0
# }

laser_arsenal = [
  {laser: "blaster",         range: 200},
  {laser: "helium neon",     range: 180},
  {laser: "nuclear pumped",  range: 170},
  {laser: "krypton",         range: 170},
  {laser: "co2",             range: 160},
  {laser: "coil",            range: 150},
  {laser: "strontium vapor", range: 140},
  {laser: "ruby",            range: 130},
  {laser: "xenon ion",       range: 120},
  {laser: "free electron",   range: 110},
  {laser: "gas dynamic",     range:  95},
  {laser: "nitrogen",        range:   0}
]

laser_arsenal = laser_arsenal.sort_by {|obj| obj[:range]}
puts laser_arsenal
puts "Welcome to the Blast-o-matic!\nHow far away is your target?"
print "> "
target_distance = gets.chomp
