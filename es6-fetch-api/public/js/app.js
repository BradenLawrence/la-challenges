fetch('http://localhost:4567/test')
  .then(response => {
    console.log('response', response);
    console.log('response.status:', response.status);
    console.log('response.statusText:', response.statusText);
    console.log('response.ok:', response.ok);
    console.log(response.json())
    return response.text();
  })
  .then(responseBody => {
    console.log('responseBody:', responseBody);
  });
