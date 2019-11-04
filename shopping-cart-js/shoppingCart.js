let coffee = {
  itemName: "Gevalia Costa Rican Coffee",
  quantity: 10
}
let apples = {
  itemName: "Honeycrisp Apple",
  quantity: 6
}
let hummus = {
  itemName: "Sabra Roasted Garlic Hummus",
  quantity: 1
}
let crackers = {
  itemName: "Wasa Multi Grain Crispbread",
  quantity: 1
}
let shoppingCart = [coffee, apples, hummus, crackers]
shoppingCart.forEach(item => {
  console.log(`${item.itemName}: x${item.quantity}`)
})
