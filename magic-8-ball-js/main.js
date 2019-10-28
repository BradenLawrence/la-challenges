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
let sorted = responses.sort().reduce((list, response) => {
  return list += `* ${response}\n`
}, ``)
console.log(`Behold the other fates that might have befallen you:
${sorted}`)

// Output the first and last responses from the alphabetized list

// Delete two of the negative responses

// Reassign 'Ask again later' to the beginning of the array

// Add 1 response of your choosing to the current list

// Concat an **array** of 3 additional responses to the current list

// Confirm the correct number of responses have been removed and added by printing the number of responses to the console (`22`)
