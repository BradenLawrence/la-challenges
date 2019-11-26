const Spaceship = require("./spaceship")
const CrewMember = require("./crew-member")

const launchpad = (ship) => {
  console.log("Initializing Pre-Flight Procedures...")
  console.log(`Welcome aboard the ${ship.name}!`)
}

let ourShip = new Spaceship("Rocinante")

launchpad(ourShip)
