let rocket = {
  fuel: 0,
  addFuel(amount) {
    if(!isNaN(parseFloat(amount) && amount >= 0)) {
      fuel += amount
      return fuel
    } else {
      return "Sorry, the amount of fuel must be a positive number."
    }
  },
  fire() {
    if(fuel > 0) {
      fuel -= 1
      console.log("Engines have fired!")
      console.log(`Remaining fuel: ${fuel}`)
      return true
    } else {
      console.log("Engines have failed to fire.")
      return false
    }
  }
}

module.export = rocket
