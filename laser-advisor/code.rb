laser_arsenal = {
  blaster:          200,
  helium_neon:      180,
  nuclear_pumped:   170,
  krypton:          170,
  co2:              160,
  coil:             150,
  strontium_vapor:  140,
  ruby:             130,
  xenon_ion:        120,
  free_electron:    110,
  gas_dynamic:       95,
  nitrogen:           0
}

sorted_arsenal = laser_arsenal.sort_by {|key, value| value}.to_h
puts "Welcome to the Blast-o-matic!\nHow far away is your target?"
print "> "
target_distance = gets.chomp
