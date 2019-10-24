crypt_of_civilization = Array.new

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization.concat(["Set of scales"])
crypt_of_civilization.insert(crypt_of_civilization.length-1, "Toast-O-Lator")
crypt_of_civilization += ["Sample of aluminum foil"]
crypt_of_civilization.push("Donald Duck doll")

puts crypt_of_civilization

extra = ["Container of soda", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization.concat(extra)

puts crypt_of_civilization

# How many items are in the array?
# What is the first item in the array?
# What is the last item in the array?
# What is the second item in the array?
# What is the third item in the array?
# What is the second from last item in the array?
# What is the index of "Toast-O-Lator"?
