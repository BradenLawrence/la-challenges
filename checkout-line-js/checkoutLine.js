let eggs = {
  itemName: 'dozen eggs',
  quantity: 2,
  price: 0.99
}

let milk = {
  itemName: 'gallon of milk',
  quantity: 1,
  price: 2.99
}

let bread = {
  itemName: 'loaf of bread',
  quantity: 1,
  price: 3.50
}

let coffee = {
  itemName: 'lbs. of coffee',
  quantity: 10,
  price: 8.99
}

let shoppingCart = [eggs, milk, bread, coffee]

const getPrice = (cart, name) => {
  return cart.find(item => {
    return item.itemName === name
  }).price
}
console.log(`1 ${coffee.itemName}: \$${getPrice(shoppingCart, coffee.itemName)}`)
console.log(`1 ${milk.itemName}: \$${getPrice(shoppingCart, milk.itemName)}`)

const getQty = (cart, name) => {
  return cart.find(item => {
    return item.itemName === name
  }).quantity
}
console.log(`${milk.itemName} qty: ${getQty(shoppingCart, milk.itemName)}`)
console.log(`${coffee.itemName} qty: ${getQty(shoppingCart, coffee.itemName)}`)

const subtotal = (cart) => {
  let total = 0
  cart.forEach(item => {
    total += item.quantity * item.price
  })
  return total.toFixed(2)
}
console.log(`Subtotal: \$${subtotal(shoppingCart)}`)

let taxRate = 6.25
console.log(`Tax rate: ${taxRate}%`)
const total = (cart) => {
  debugger;
  return (subtotal(cart) * (taxRate / 100 + 1)).toFixed(2)
}
console.log(`Total: \$${total(shoppingCart)}`)
