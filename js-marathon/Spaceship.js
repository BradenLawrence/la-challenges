class Spaceship {
  constructor(name) {
    this.name = name
    this.crew = []
    this.propulsion = null
  }
  loadCrew = (crewList) => {
    crewList.forEach(member => {
      this.crew.push(member)
      console.log(`${member.name} has boarded the ${this.name}.`)
    })
  }
  captain = () => {
    return this.crew[Math.floor(Math.random() * this.crew.length)]
  }
  mountPropulsion = (engine) => {
    this.propulsion = engine
    console.log("Propulsion has been mounted!")
  }
  takeoff = () => {
    let launchSuccessful = this.propulsion.fire()
    if(launchSuccessful) {
      console.log("Vroooooooooooom")
    } else {
      console.log("Takeoff was unsuccessful.")
    }
  }
}

module.exports = Spaceship
