### Introduction

Using `fetch`, retrieve the current weather conditions from
[DarkSky](https://darksky.net/dev/docs/forecast) and print them to the page.

### Getting Started
```no-highlight
et get weather-js
cd weather-js
bundle install
ruby server.rb
```

Note: This exercise uses the DarkSky API. However, API providers change their rules all the time. If you cannot complete this assignment with DarkSky, try the [Giphy API](https://developers.giphy.com/) instead.

### Instructions

1. Create a [new account](https://darksky.net/dev/register) on DarkSky to get an API key.
   Put this API key in the appropriate place within `server.rb`.
2. Start the "Proxy API" server: `ruby server.rb`.
3. Point your browser to <http://localhost:4567/index.html>
4. Find the latitude and longitude of the location for which you would like to monitor the weather conditions.
5. Write some JavaScript in `public/main.js` to `fetch` the weather data:

    ```no-highlight
    /api/v1/forecast/[latitude],[longitude]
    ```

    As an example, here is the URL for accessing the weather data for Boston, MA.

    ```no-highlight
    /api/v1/forecast/42.35,-71.07
    ```

6. Use your knowledge of DOM manipulation to insert the current temperature and conditions into the page.
7. **Optional:** Take it a step further by integrating [Skycons](http://darkskyapp.github.io/skycons/) into your webapp. This dependency has been added to the `<head>` tag within `index.html`. So you can use it, straight away.
