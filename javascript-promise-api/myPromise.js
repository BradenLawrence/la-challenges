fs = require('fs')

// /*(1)*/ fs.readFile('twitterData.json', 'utf8', (err, data) => {
//   if (err) {  // check if there was a problem reading the file
//     console.log('Error reading file.')
//     console.log(err)
//   } else {  // if no probs reading file, try to parse it
//     try {
//       /*(2)*/ twitterData = JSON.parse(data)
//       /*(3)*/ console.log(twitterData)
//     } catch (err) {
//       console.log('Error parsing file.')
//       console.log(err)
//     }
//   }
// })

let read = (filename) => {
  return new Promise((resolve, reject) => {
    fs.readFile(filename, 'utf8', (err, data) => {
      if (err) {
        reject(Error(err))
      } else {
        resolve(data)
      }
    })
  })
}

read('twitterData.json')
  .then((data) => {
    let parsedData = JSON.parse(data)
    console.log(parsedData)
  })
  .catch((err) => {
    console.log("Something went wrong.")
    console.log(err)
  })

read('twitterData.json')
  .then((data) => { return JSON.parse(data) })
  .then((json) => { console.log(json) })
  .catch((err) => {
    console.log("Something went wrong.")
    console.log(err)
  })
