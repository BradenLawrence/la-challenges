dinner_total = 178
tip = 0.20

puts "The bill came up to: $#{format("%.2f",dinner_total)}"
puts "So a #{format("%.0f",tip*100)}% tip is #{format("%.2f",dinner_total*tip)}"
puts "That gives us a total of: $#{format("%.2f", dinner_total+(dinner_total*tip))}"
