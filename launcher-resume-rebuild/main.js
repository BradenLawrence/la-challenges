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

let commentForm = document.querySelector('#comment-form')
commentForm.addEventListener('submit', event => {
  event.preventDefault()
  let inputs = event.target.querySelectorAll('.comment-input')
  let anyErrors = false
  inputs.forEach(input => {
    let errorDisplay = input.closest('label').querySelector('.error-display')
    if(input.value === '') {
      errorDisplay.innerHTML = 'Input must not be blank.'
      anyErrors = true
    } else {
      errorDisplay.innerHTML = ''
    }
  })
  if(anyErrors) {
    alert('Sorry, there was a problem submitting the form. Please fix any errors listed and resubmit.')
  } else {
    alert('Form submitted successfully. Thank you!')
  }
})
