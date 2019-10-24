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
