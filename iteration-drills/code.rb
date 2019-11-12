#  Write Ruby<->English answers here as comments in your code

# 1) For every "number" in the "numbers" array, print that number's value times 3.
# * numbers is an array
# numbers.each do |number|
#   puts 3 * number
# end

# 2) For every "name" in the "names" array, print how long that name is.
# * names is an array
# names.each do |name|
#   puts name.length
# end

# 3) Add all of the numbers in the "numbers" array together and print the total.
# * numbers is an array
# sum = 0
# numbers.each do |number|
#   sum += number
# end
# puts sum

# 4) For each key, called "name", that is stored in the hash,
#    print that name and its stored value, called "age".
# * hash is a hash
# hash.each do |name, age|
#   puts "#{name} is #{age} years old."
# end

# 5) Add together the values of each "transaction" stored in the "account" hash,
#    and print the result.
# * account is a hash
# sum = 0
# account.each do |transaction, value|
#   sum += value
# end
# puts "The value the account is #{sum}"

# 6) Print out each "address" value stored in the "address" hash, along with the
#    "name" key associated with it.
# * addresses is a hash
# addresses.each do |name, address|
#   puts "#{name} lives on #{address}"
# end

#  Write English<->Ruby answers here as comments in your code

# 1. `For every element 'word' in the array 'sentences' print out the word.`
# sentences.each {|word| puts word}

# 2. `For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.`
# ma_areacodes = [339,351,413,508,617,774,781,857,978]
# numbers.each do |phone_number|
#   if ma_areacodes.include? phone_number.to_s.chars[0..2].join.to_i
#     puts phone_number
#   end
# end

# 3. `For every element number in the array 'numbers' print out every odd number.`
# numbers.each {|number| puts number if number % 2 != 0 }

# 4. `For every name-age pair in the hash 'ages', print out each pair.`
# ages.each {|name, age| puts "#{name} is #{age} years old."}

# 5. `For every name-age pair in the hash 'ages', print out a pair if the age is > 10.`
# ages.each {|name, age| puts "#{name} is #{age} years old." if age > 10}

# 6. `For every name-age pair in the hash 'ages', print out a pair if the age is even.`
# ages.each {|name, age| puts "#{name} is #{age} years old." if age % 2 == 0}

# Write Ruby code to find out the answers to the following questions:
array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# * What is the sum of all the numbers in `array`?
# puts array.reduce(:+)

# * How would you print out each value of the array?
# array.each {|value| puts value}

# * What is the sum of all of the even numbers?
# puts array.select {|number| number % 2 == 0}.reduce(:+)

# * What is the sum of all of the odd numbers?
# puts array.select {|number| number % 2 != 0}.reduce(:+)

# * What is the sum of all the numbers divisble by 5?
# puts array.select {|number| number % 5 == 0}.reduce(:+)

# * What is the sum of the squares of all the numbers in the array?
# puts array.map {|number| number * number}.reduce(:+)



# Write Ruby code to find out the answers to the following questions:

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# * How would you print out each name backwards in `array`?
# array.each {|name| puts name.reverse}

# * What are the total number of characters in the names in `array`?
# puts array.reduce(0) {|total, name| total + name.length}

# * How many names in `array` are less than 5 characters long?
# puts array.select {|name| name.length < 5}.length

# * How many names in `array` end in a vowel?
# vowels = ["a","e","i","o","u"]
# puts array.select {|name| vowels.include? name[-1]}.length

# * How many names in `array` are more than 5 characters long?
# puts array.select {|name| name.length > 5}.length

# * How many names in `array` are exactly 5 characters in length?
# puts array.select {|name| name.length == 5}.length
