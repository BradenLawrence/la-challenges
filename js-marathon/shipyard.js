const Spaceship   = require("./spaceship"),
      CrewMember  = require("./crew-member"),
      rocket      = require("./rocket")

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

const countdown = (callBack, count = 3) => {
  if(!isNaN(parseInt(count)) && count >= 0) {
    if(count == 0) {
      console.log("Blastoff!!")
      callBack()
    } else {
      console.log(count)
      setTimeout(() => {
        countdown(callBack, count-1)
      }, 1000)
    }
  } else {
    console.log("Sorry, the countdown must start at a positive number")
  }
}

const launchpad = (ship) => {
  console.log("Initializing Pre-Flight Procedures...")
  console.log(`Welcome aboard the ${ship.name}!`)

  let ourCrew = trainCrew(["Holden", "Naomi", "Alex", "Amos"])
  ourShip.loadCrew(ourCrew)

  console.log(`Today's flight will be captained by ${ourShip.captain().name}`)
  ourShip.mountPropulsion(rocket)
  ourShip.propulsion.addFuel(10)

  countdown(ourShip.takeoff, 5)
}

let ourShip = new Spaceship("Rocinante")
launchpad(ourShip)
