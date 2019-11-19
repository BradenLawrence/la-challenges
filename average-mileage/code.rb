shuvver_ship  = [260, 483, 792, 357, 546]
zhook_cruiser = [186, 223, 173, 297, 303]
nanoship      = [646, 883, 761, 932, 778]

def average(mileage_records)
  return mileage_records.reduce(:+) / mileage_records.size.to_f
end

def mileage_rating(mileage)
  categories = {
    1000  =>  "A",
     750  =>  "B",
     500  =>  "C",
     250  =>  "D",
       0  =>  "F - Use this ship as a last resort! We aren\'t made of money!"
  }
  rating = categories.keys.find {|key| key < mileage}
  return categories[rating]
end

puts "Shuvver Ship:"
shuvver_average = average(shuvver_ship)
puts "Average: #{shuvver_average}"
puts "Rating: #{mileage_rating(shuvver_average)}"
puts ""
puts "Zhook Cruiser:"
zhook_average = average(zhook_cruiser)
puts "Average: #{zhook_average}"
puts "Rating: #{mileage_rating(zhook_average)}"
puts ""
puts "Nanoship"
nanoship_average = average(nanoship)
puts "Average: #{nanoship_average}"
puts "Rating: #{mileage_rating(nanoship_average)}"
