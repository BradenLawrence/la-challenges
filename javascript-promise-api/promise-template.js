new Promise((resolve, reject) => {
  // do something asynchronously
  if (/* things are successful */) {
    resolve("It worked!")  // execute .then()
  } else {
    reject(Error("It broke!"))  // execute .catch()
  }
})
  .then((result) => {
  // process data, add elements to the DOM, etc...
  console.log(result)
})
  .catch((err) => {
  // show user an error message, retry network request, etc...
  console.log(err)
})
