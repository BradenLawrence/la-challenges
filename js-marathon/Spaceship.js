class Spaceship {
  constructor(name) {
    this.name = name
    this.crew = []
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
}

module.exports = Spaceship
