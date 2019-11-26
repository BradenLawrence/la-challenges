let rocket = {
  fuel: 0,
  addFuel(amount) {
    if(!isNaN(parseFloat(amount) && amount >= 0)) {
      this.fuel += amount
      return this.fuel
    } else {
      return "Sorry, the amount of fuel must be a positive number."
    }
  },
  fire() {
    if(this.fuel > 0) {
      this.fuel -= 1
      console.log("Engines have fired!")
      console.log(`Remaining fuel: ${this.fuel}`)
      return true
    } else {
      console.log("Engines have failed to fire.")
      return false
    }
  }
}

module.exports = rocket
