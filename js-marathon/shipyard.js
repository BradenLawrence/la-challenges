const Spaceship = require("./spaceship")
const CrewMember = require("./crew-member")

const launchpad = (ship) => {
  console.log("Initializing Pre-Flight Procedures...")
  console.log(`Welcome aboard the ${ship.name}!`)
}

const trainCrew = (crewList) => {
  let crew = []
  crewList.forEach(name => {
    crew.push(new CrewMember(name))
  })
  crew.forEach(name => {
    name.trained = true
  })
  return crew
}

let ourShip = new Spaceship("Rocinante")

console.log(trainCrew(["Holden", "Naomi", "Alex", "Amos"]))

launchpad(ourShip)
