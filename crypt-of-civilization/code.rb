crypt_of_civilization = Array.new

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization.concat(["Set of scales"])
crypt_of_civilization.insert(crypt_of_civilization.length, "Toast-O-Lator")
crypt_of_civilization += ["Sample of aluminum foil"]
crypt_of_civilization.push("Donald Duck doll")

extra = ["Container of soda", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization.concat(extra)

puts "Items in the crypt:\n#{crypt_of_civilization.length}\n\n"

puts "First item:\n#{crypt_of_civilization.first}\n\n"

puts "Last item:\n#{crypt_of_civilization.last}\n\n"

puts "2nd item:\n#{crypt_of_civilization[1]}\n\n"

puts "3rd item:\n#{crypt_of_civilization[2]}\n\n"

puts "2nd to last item:\n#{crypt_of_civilization[-2]}\n\n"

puts "Index of Toast-O-Lator:\n#{crypt_of_civilization.index("Toast-O-Lator")}\n\n"

puts %W('Container of soda' present?\n
        #{crypt_of_civilization.include?("Container of soda")}\n\n).join(" ")

puts %W('Toast-O-Lator' present?\n
        #{crypt_of_civilization.include?("Toast-O-Lator")}\n\n).join(" ")

puts %W('Plastic bird' present?\n
        #{crypt_of_civilization.include?("Plastic bird")}\n\n).join(" ")

puts %W(Sort by length:\n
        #{crypt_of_civilization.sort_by { |item| item.length } }\n\n).join(" ")

puts "Sort alphabetically:\n#{crypt_of_civilization.sort}\n\n"

puts "Sort alphabetically:\n#{crypt_of_civilization.sort.reverse}\n\n"

puts "Print using 'while':"
i=0
while i<crypt_of_civilization.length do
  puts "#{i}) #{crypt_of_civilization[i]}"
  i += 1
end
puts "\n"

puts "Print using 'each':"
crypt_of_civilization.each do |item|
  puts "* #{item}"
end
puts "\n"

# the first item
puts "Removing first item:"
puts crypt_of_civilization.shift
puts "\n"

# the last item
puts "Removing last item:"
puts crypt_of_civilization.pop
puts "\n"

# "set of scales"
puts "Removing 'Set of scales':"
puts crypt_of_civilization.delete("Set of scales")
puts "\n"

# "sample of aluminum foil"
puts "Removing 'Sample of aluminum foil':"
puts crypt_of_civilization.delete("Sample of aluminum foil")
puts "\n"
