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

puts %W(Greetings! I am Octavius Ball, reknowned fortune teller! \nI knew you
        would be stopping by, so I have prepared a dazzling array of
        #{responses.length} possible futures for you.).join(" ")

puts "What do you wish to know?"
print "> "
question = gets.chomp.downcase
puts %W(Casting your question into the threads of fate...\n\n
        ~ '#{question}' ~\n\n).join(" ")

puts "Your fate is sealed!"
print "Hmm"
5.times do
  sleep(0.25)
  print "."
end
puts "\n#{responses.sample}\n\n"

positive = responses.select { |response| response.downcase.include? "yes" }
puts "Responses including 'yes': #{positive.length}\n\n"

negative = responses.select do |response|
  response.downcase.include?("no") || response.downcase.include?("not")
end
puts "Responses including 'no' or 'not': #{negative.length}\n\n"

puts "Behold the other fates that might have befallen you:"
sorted = responses.sort
sorted.each { |fate| puts "* #{fate}" }
puts

puts %W(Take special note of these two, \nfor they are the first and last of
        your possible fates).join(" ")
puts "* #{sorted.first}\n* #{sorted.last}\n\n"

puts %W(Do not despair! You are not doomed to this fate!\n
        Watch as I bend the fabric of time and space to my will, \n
        and create a new possible future!).join(" ")
magic = "You will win the lottery!"
puts "~ '#{magic}' ~\n\n"
responses << magic

puts %W(I'm just getting started! Here are three more possible futures that I
        will grant you!).join(" ")
sorcery = [
    "You will find a puppy!",
    "You will find true love!",
    "You will find sasquatch!"
  ]
puts "~ '#{sorcery}' ~\n\n"
responses.concat(sorcery)

puts %W(Just to prove that I have done as I said. Behold the increased scope of
        your potential future!\nTotal responses: #{responses.length}).join(" ")
