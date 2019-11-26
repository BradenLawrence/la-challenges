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
launchpad(ourShip)

let ourCrew = trainCrew(["Holden", "Naomi", "Alex", "Amos"])
ourShip.loadCrew(ourCrew)

console.log(ourShip.captain())