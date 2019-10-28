let responses = [
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
// your code, here
// Confirm the correct number of responses have been stored by printing the number to the console (`20`)
console.log(`Greetings! I am Octavius Ball, reknowned fortune teller!
I knew you would be stopping by, so I have prepared a dazzling array of \
${responses.length} possible futures for you.`)

// Ask the user what their question is, and store it as a variable called `question`
let question = prompt(`What do you wish to know?`)

// Output a random response to the user's question
console.log(`Casting your question into the threads of fate...
\t~ '${question}' ~`)
console.log(responses[Math.floor(Math.random()*responses.length)])

// Output the number of responses that include the word "yes"
let positive = responses.filter(response => {
  return response.toLowerCase().includes(`yes`)
})
console.log(`Responses including 'yes': ${positive.length}`)

// Output the number of responses that include the words "no" or "not"
let negative = responses.filter(response => {
  return response.toLowerCase().includes(`no`) ||
         response.toLowerCase().includes(`not`)
})
console.log(`Responses including 'no' or 'not': ${negative.length}`)

// Output the alphabetized list of responses
responses.sort()
let alpha_list = responses.reduce((list, response) => {
  return list += `* ${response}\n`
}, ``)
console.log(`Behold the other fates that might have befallen you:
${alpha_list}`)

// Output the first and last responses from the alphabetized list
console.log(`Take special note of these two, for they are the first and last of\
 your possible fates`)
console.log(`* ${responses[0]}`)
console.log(`* ${responses[responses.length-1]}`)

// Delete two of the negative responses
console.log(`Do not despair! You are not doomed to this fate!
Watch as I bend the fabric of time and space to my will, and remove two of \
your negative fates:`)
let fatesToRemove = 2
let randomNegatives = []
while(randomNegatives.length < fatesToRemove) {
  let random = negative[Math.floor(Math.random() * negative.length - 1)]
  if(randomNegatives.indexOf(random) === -1) {
    randomNegatives.push(random)
  }
}
console.log(`Fates to remove:`)
console.log(randomNegatives)
randomNegatives.forEach(negative => {
  responses.splice(responses.indexOf(negative), 1)
})
console.log(responses)

// Reassign 'Ask again later' to the beginning of the array
console.log(`Watch as I shuffle your fates as if they were a deck of cards!`)
console.log(`Position of 'Ask again later': \
${responses.indexOf('Ask again later')}\n\t~ MAGIC ~`)
responses.unshift(
  responses.splice(
    responses.indexOf('Ask again later'), 1
  )[0]
)
console.log(`Position of 'Ask again later': \
${responses.indexOf('Ask again later')}`)
console.log(responses)
// Add 1 response of your choosing to the current list
console.log(`Watch as I include a new possible future for you! \
'You will win the lottery!'`)
responses.push('You will win the lottery!')
console.log(responses)

// Concat an **array** of 3 additional responses to the current list
let sorcery = [
  "You will find a puppy!",
  "You will find true love!",
  "You will find sasquatch!"
]
console.log(`I'm just getting started! Here are three more possible futures \
that I will grant you!\n${sorcery}`)
console.log(responses.concat(sorcery))

// Confirm the correct number of responses have been removed and added by printing the number of responses to the console (`22`)
console.log(`Behold the new scope of possible futures you hold: 
${responses.length}`)
