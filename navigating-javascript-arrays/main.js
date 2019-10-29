let supplies = ["space helmet", "canister of oxygen", "water recycler", "big red button", "freeze dried ice cream", "tang drink mix"]

// 1.)  Using a `forEach` loop, write a function called `supplyCheck` that takes in an array of supplies as an argument, and logs each item to your console. It should match the message of "SUPPLY ITEM is logged and accounted for."

// Your code here....
const supplyCheck = (arr) => {
  arr.forEach(item => {
    console.log(`${item} is logged and accounted for.`)
  })
}

supplyCheck(supplies)

// 2.) Create a function named stowSupplies that takes in our array of supplies, and returns item name and its index number in a formatted string.
const stowSupplies = (arr) => {
  let supplyList = "Stowed Supplies\n--------------------\n"
  arr.forEach((item, i) => {
    supplyList += `Locker number ${i+1}: ${item}\n`
  })
  return supplyList
}

console.log(stowSupplies(supplies))

// 3.) Create a function named addAlphabetically that takes in our array of supplies and a new supply item and returns an array of supplies with that new item, sorted alphabetically.
const addAlphabetically = (arr, item) => {
  return arr.concat(item).sort()
}

console.log(addAlphabetically(supplies, "laser pistol"))

// 4.) Create a function named stockCheck that takes in an inventory checklist array, and an array of supplies, and returns an array of items that are missing from the checklist.

let inventoryChecklist = ["big red button", "canister of oxygen", "freeze dried ice cream", "jetpack", "tang drink mix", "space helmet", "space brussels sprouts", "water recycler", "welding torch"]

const stockCheck = (checklist, stock) => {
  let missing = []
  checklist.forEach(item => {
    if(!stock.includes(item)) {
      missing.push(item)
    }
  })
  return missing
}

console.log(stockCheck(inventoryChecklist, supplies))

// 5.) Create a function named addMissingSupplies that takes in an array of supplies, and an array of missing supplies, and returns a new array with all of the items combined! Use your stockCheck method to help you with this.

const addMissingSupplies = (checklist, stock) => {
  return addAlphabetically(stock, (stockCheck(checklist, stock)))
}

console.log(addMissingSupplies(inventoryChecklist, supplies))
