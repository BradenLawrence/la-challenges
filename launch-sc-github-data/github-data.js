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
  return reposWithDesc.map(repo => `\n${repo.name}`)
}
console.log('\n6) ' + hasDescriptions(data))

//7)
const newDescriptionsArray = (array) => {
  return array.map(repo => {
    if(!repo.description) {
      return "\nNo description provided"
    } else {
      return `\n${repo.description}`
    }
  })
}
console.log('\n7) ' +  newDescriptionsArray(data))

//8)
let keyInfo = (array) => {
  return array.map(repo => {
    let repoName = repo.name
    let repoOwner = ""
    if(typeof repo.owner === "string") {
      repoOwner = repo.owner
    } else {
      repoOwner = repo.owner.login
    }
    let repoWatchers = repo.watchers_count
    return `\n"${repoName}" by ${repoOwner} has ${repoWatchers} watchers`
  })
}
console.log('\n8) ' +  keyInfo(data))

//9)
let monkeyKeys = (array) => {
  let monkey = array.find(repo => repo.name === "monkey_party")
  let monkeyKeyStrings = []
  for(let key in monkey.license) {
    monkeyKeyStrings.push(`${key}: ${monkey.license[key]}`)
  }
  return monkeyKeyStrings
}
console.log('\n9) ' + monkeyKeys(data))

//10)
let urlValue = (array) => {
  return monkeyKeys(array)[1]
}
console.log('\n10) ' + urlValue(data))

module.exports = { numOfRepos, largestRepo, mostRecentRepo, noGazers, maxGazers, hasDescriptions, newDescriptionsArray, keyInfo, monkeyKeys, urlValue }
