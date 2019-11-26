let rocket = {
  fuel: 0,
  addFuel(amount) {
    if(!isNaN(parseFloat(amount) && amount >= 0)) {
      fuel += amount
      return fuel
    } else {
      return "Sorry, the amount of fuel must be a positive number."
    }
  }
}

module.export = rocket
