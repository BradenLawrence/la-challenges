// Meets Expectations
let researcherSpaceItems = [
  new SpaceItem("rock",    .50, 5),
  new SpaceItem("insect", 2.00, 2),
  new SpaceItem("twig",   2.50, 4),
  new SpaceItem("plant",  2.00)
]

let researchersList = new SpaceList("Researcher", researcherSpaceItems)

const summary = (SpaceItems) => {
  let summaryString = `Dear Researcher,\n\nI bought you:\n\n`
  let total = 0
  SpaceItems.forEach(item => {
    let itemTotal = item.quantity * item.price
    total += itemTotal
    summaryString += `${item.quantity} ${item.name}\
${item.quantity === 1 ? "":"s"} - \$${itemTotal.toFixed(2)}\n`
  })
  summaryString += `\nYou owe me \$${total.toFixed(2)}.`
  return summaryString
}

console.log(summary(researcherSpaceItems))

// Optional
let inventoryLab1 = {
  fruit: 2,
  grain: 2,
  plant: 5,
  grassBlade: 5,
  rock: 10,
  mushroom: 11,
  twig: 3,
  insect: 1,
  soilSample: 5
};

let inventoryLab2 = {
  fruit: 2,
  grain: 2,
  plant: 5,
  grassBlade: 5,
  rock: 10,
  mushroom: 11,
  twig: 6,
  insect: 10,
  soilSample: 5
};
