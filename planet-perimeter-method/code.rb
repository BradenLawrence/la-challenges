def perimeter(height, width = height)
  return height * width * 2
end

puts "Height: 2 and Width: 4"
puts perimeter(2,4)

puts "Height: 16 and Width: unspecified"
puts perimeter(16)
