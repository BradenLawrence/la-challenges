// don't worry if some of this is unfamiliar - we'll get there!!

let affirmations = [
  'You are so amazing.',
  'I know you can do it.',
  'You rocked that.',
  'Bravo!',
  'Keep on keeping on.',
  'Whoa that looks great!'
]

let mainDiv = document.getElementById('main')
affirmations.forEach(phrase => {
  mainDiv.innerHTML += `${phrase}  --  `
  console.log(phrase)
})
