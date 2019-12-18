let latitude = 42.35
let longitude = -71.07
let display = document.getElementById('main')

var icons = new Skycons({"color": "skyblue"});

const initIcons = () => {
  icons.set("clear-day", Skycons.CLEAR_DAY);
  icons.set("clear-night", Skycons.CLEAR_NIGHT);
  icons.set("partly-cloudy-day", Skycons.PARTLY_CLOUDY_DAY);
  icons.set("partly-cloudy-night", Skycons.PARTLY_CLOUDY_NIGHT);
  icons.set("cloudy", Skycons.CLOUDY);
  icons.set("rain", Skycons.RAIN);
  icons.set("sleet", Skycons.SLEET);
  icons.set("snow", Skycons.SNOW);
  icons.set("wind", Skycons.WIND);
  icons.set("fog", Skycons.FOG);

  icons.play();
}

fetch(`/api/v1/forecast/${latitude},${longitude}`)
  .then(response => response.json())
  .then(json => {
    display.innerHTML += `
    <li>Temperature: ${json.currently.temperature}
    <canvas id="snow" width="60" height="60"></canvas></li>
    <li>Summary: ${json.daily.summary}</li>
    `
  })
  .then(initIcons)
