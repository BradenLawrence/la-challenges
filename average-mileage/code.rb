shuvver_ship  = [260, 483, 792, 357, 546]
zhook_cruiser = [186, 223, 173, 297, 303]
nanoship      = [646, 883, 761, 932, 778]

def average(mileage_records)
  return mileage_records.reduce(:+) / mileage_records.size.to_f
end

puts "Shuvver Ship:"
puts average(shuvver_ship)
puts ""
puts "Zhook Cruiser:"
puts average(zhook_cruiser)
puts""
puts "Nanoship"
puts average(nanoship)
