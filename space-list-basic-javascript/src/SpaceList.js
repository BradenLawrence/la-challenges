class SpaceList {
  constructor(name, SpaceItems = []) {
    this.name = name
    this.items = SpaceItems
  }
  checkInventory = (inventory) => {
    let stillNeeded = {}
    this.items.forEach(item => {
      let itemDeficit = item.quantity - inventory[item.name]
      if(itemDeficit > 0) {
        stillNeeded[item.name] = itemDeficit
      }
    })
    if(Object.keys(stillNeeded).length === 0) {
      return "The lab has it all! I got you everything on your list here."
    } else {
      let report = "Sorry, the lab doesn't have enough of the following:\n"
      for(let item in stillNeeded) {
        report += `- ${item}\n`
      }
      report += "You'll have to go someplace else to get these."
      return report
    }
  }
}
