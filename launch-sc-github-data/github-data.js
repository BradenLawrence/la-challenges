let data = require('./data')

// 1)
const numOfRepos = (array) => {
  return array.length
}
console.log('\n1) ' + numOfRepos(data))

// 2)
const largestRepo = (array) => {
  let largest = {size: 0, name: ""}
  array.forEach(repo => {
    if(repo.size > largest.size) {
      largest = {size: repo.size, name: repo.name}
    }
  })
  return largest.name
}
console.log('\n2) ' + largestRepo(data))

// 3)
const mostRecentRepo = (array) => {
  let mostRecent = {date: 0, name: ""}
  array.forEach(repo => {
    let newest = Date.parse(mostRecent.date)
    let current = Date.parse(repo.created_at)
    if(newest < current) {
        mostRecent = {date: repo.created_at, name: repo.name}
    }
  })
  return mostRecent.name
}
console.log('\n3) ' + mostRecentRepo(data))

// 4)
const noGazers = (array) => {
  let noGazersList = array.filter(repo => {
    return repo.stargazers_count === 0
  })
  return noGazersList.length
}
console.log('\n4) ' + noGazers(data))

// 5)
const maxGazers = (array) => {
  let gazerTracker = {gazers: 0, name: ""}
  array.forEach(repo => {
    if(gazerTracker.gazers < repo.stargazers_count) {
      gazerTracker = {
        gazers: repo.stargazers_count,
        name:   repo.name
      }
    }
  })
  return gazerTracker.name
}
console.log('\n5) ' + maxGazers(data))

// 6)
const hasDescriptions = (array) => {
  let reposWithDesc = array.filter(repo => repo.description !== null)
  return reposWithDesc.map(repo => repo.name)
}
console.log('\n6) ' + hasDescriptions(data))

//7)
const newDescriptionsArray = (array) => {

}
console.log('\n7) ' +  newDescriptionsArray(data))

//8)
let keyInfo = (array) => {

}
console.log('\n8) ' +  keyInfo(data))

//9)
let monkeyKeys = (array) => {

}
console.log('\n9) ' + monkeyKeys(data))

//10)
let urlValue = (array) => {

}
console.log('\n10) ' + urlValue(data))

module.exports = { numOfRepos, largestRepo, mostRecentRepo, noGazers, maxGazers, hasDescriptions, newDescriptionsArray, keyInfo, monkeyKeys, urlValue }
