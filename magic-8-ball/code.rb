responses = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

# Confirm the correct number of responses have been stored by printing the number to the console (`20`)
puts %W(Greetings! I am Octavius Ball, reknowned fortune teller! \nI knew you
  would be stopping by, so I have prepared a dazzling array of
  #{responses.length} possible futures for you.).join(" ")

# Ask the user what their question is, and store it as a variable called `question`
puts "What do you wish to know?"
print "> "
question = gets.chomp.downcase
puts "Casting your question into the threads of fate...\n\n"
puts " ~ '#{question}' ~\n\n"

# Output a random response to the user's question
puts "Your fate is sealed!"
print "Hmm"
5.times do
  sleep(0.25)
  print "."
end
puts "\n#{responses.sample}\n\n"

# Output the number of responses that include the word "yes"
positive = responses.select { |response| response.downcase.include? "yes" }
puts "Responses including 'yes': #{positive.length}\n\n"

# Output the number of responses that include the words "no" or "not"
negative = responses.select do |response|
  response.downcase.include?("no") || response.downcase.include?("not")
end
puts "Responses including 'no' or 'not': #{negative.length}\n\n"

# Output the alphabetized list of responses
puts "Behold the other fates that might have befallen you:"
puts responses.sort

# Output the first and last responses from the alphabetized list


# Add 1 response of your choosing to the current list


# Concat an array of 3 additional responses to the current list


# Confirm the correct number of responses have been stored by printing the number to the console (`24`)
