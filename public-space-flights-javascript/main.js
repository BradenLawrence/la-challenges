// Your code here!
const dehydratedBanana = 1.27
const tofuCake = 4.17
const cheeseSpread = 3.79
const dehydratedIceCreamSandwich = 0.75

// - Greet the customer.
console.log(`Welcome to Crazy Ned's Discount Space Tours!\n
We offer premium tours to The Moon, Mars, Ganymede, and Neptune for travelers \
of all ages!`)

// - Ask how many adult tickets they would like.
// - Accept the user's answer and save it as a variable.
let adult_tickets = prompt(`How many adult tickets would you like?`)

// - Ask how many child tickets they would like.
// - Accept the user's answer and save it as a variable.
let child_tickets = prompt(`And how many child tickets would you like?`)

// - Print a sentence returning the number of adult and child tickets the user has asked for.
console.log(`Great! I'll put you down for ${adult_tickets} adult tickets and \
${child_tickets} child tickets!`)
