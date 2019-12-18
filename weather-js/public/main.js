let latitude = 42.35
let longitude = -71.07
let display = document.getElementById('main')

fetch(`/api/v1/forecast/${latitude},${longitude}`)
  .then(response => response.json())
  .then(awesome => {
    console.log(awesome.daily.summary)
    display.innerHTML += awesome.daily.summary
  })
