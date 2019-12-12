let text = document.getElementById('changing-color-text')
let changeFontColor = (event) => {
  let colors = ['Aqua', 'Blue', 'Orange', 'Green', 'Red', 'LightSteelBlue']
  let index = Math.floor(Math.random() * colors.length)
  let color = colors[index]

  event.target.style.color = color
}

text.addEventListener('click', changeFontColor)

window.onload = () => {
  console.log('window loaded.')
}
