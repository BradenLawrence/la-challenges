$(document).foundation()

let quoteBtn = document.querySelector('#quote')
let quoteDisplay = document.querySelector('#quote-display')
let quoteList =  [
  "A good programmer is someone who looks both ways before crossing a one-way street.",
  "Java is to JavaScript as ham is to hamster.",
  "How do you comfort a JavaScript bug? You console it."
]
quoteBtn.addEventListener('click', event => {
  let randomQuote = quoteList[Math.floor(Math.random()*quoteList.length)]
  quoteDisplay.innerHTML = randomQuote
})
