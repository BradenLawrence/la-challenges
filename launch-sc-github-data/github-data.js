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
  return `The largest repo is "${largest.name}"`
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
  return `The most recent repo is "${mostRecent.name}"`
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
  return `"${gazerTracker.name}" has the most stargazers, with a total of \
${gazerTracker.gazers}`
}
console.log('\n5) ' + maxGazers(data))

// 6)
const hasDescriptions = (array) => {
  let reposWithDesc = array.filter(repo => repo.description !== null)
  let repoString = reposWithDesc.map(repo => `\n${repo.name}`)
  return `Repos with descriptions: ${repoString}`
}
console.log('\n6) ' + hasDescriptions(data))

//7)
const newDescriptionsArray = (array) => {
  let descriptions = array.map(repo => {
    if(!repo.description) {
      return "\nNo description provided"
    } else {
      return `\n${repo.description}`
    }
  })
  return `List of all descriptions: ${descriptions}`
}
console.log('\n7) ' +  newDescriptionsArray(data))

//8)
let keyInfo = (array) => {
  let summaries = array.map(repo => {
    let repoName = repo.name
    let repoOwner = ""
    if(typeof repo.owner === "string") {
      repoOwner = repo.owner
    } else if(typeof repo.owner.login === "string") {
      repoOwner = repo.owner.login
    } else {
      repoOwner = "an unknown owner"
    }
    let repoWatchers = repo.watchers_count
    return `\n"${repoName}" by ${repoOwner} has ${repoWatchers} watchers`
  })
  return `Repo summaries: ${summaries}`
}
console.log('\n8) ' +  keyInfo(data))

//9)
let monkeyKeys = (array) => {
  let monkey = array.find(repo => repo.name === "monkey_party")
  let monkeyKeyStrings = []
  for(let key in monkey.license) {
    monkeyKeyStrings.push(`\n${key}: ${monkey.license[key]}`)
  }
  return `Keys found in "monkey_party": ${monkeyKeyStrings}`
}
console.log('\n9) ' + monkeyKeys(data))

//10)
let urlValue = (array) => {
  let monkey = array.find(repo => repo.name === "monkey_party")
  return monkey.license.url
}
console.log('\n10) ' + urlValue(data))

module.exports = { numOfRepos, largestRepo, mostRecentRepo, noGazers, maxGazers, hasDescriptions, newDescriptionsArray, keyInfo, monkeyKeys, urlValue }
