let secret = Math.floor(Math.random() * 10 + 1)

console.log(`Thank you for participating in this psychic ability assessment!`)
let user = prompt(`Please enter your name:`)
let guess = Number(prompt(`Thank you! Now, focus your psycic powers and guess the\
  secret number between 1 and 10:`))

if(secret === guess) {
  console.log(`Congrats ${user}! You might be psycic!`)
} else {
  console.log(`Sorry ${user}, you guessed incorrectly and have been \
disqualified.`)
}
