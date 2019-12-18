let latitude = 42.35
let longitude = -71.07
let display = document.getElementById('main')

fetch(`/api/v1/forecast/${latitude},${longitude}`)
  .then(response => response.json())
  .then(json => {
    console.log(json)
    display.innerHTML += `<li>Temperature: ${json.currently.temperature}</li>`
    display.innerHTML += `<li>Summary: ${json.daily.summary}</li>`
  })
