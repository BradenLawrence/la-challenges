let teams = [
  team1 = {
    name: "JustJavaScript",
    scores: [
      { player: "Rami",     score: 88  },
      { player: "Natoya",   score: 92  },
      { player: "Max",      score: 68  },
      { player: "Lynn",     score: 100 }
    ]
  },
  team2 = {
    name: "We Are Ruby",
    scores: [
      { player: "Sasha",    score: 82  },
      { player: "Mohammed", score: 98  },
      { player: "Jennifer", score: 94  },
      { player: "Denise",   score: 92  }
    ]
  }
]

const average = (obj) => {
  let total = 0
  obj.scores.forEach(item => {
    total += item.score
  })
  obj.average = total / obj.scores.length
  return obj.average
}

const passing = (obj) => {
  obj.totalPassing = 0
  obj.scores.forEach(item => {
    if(item.score >= 70) {
      item.passing = true
      obj.totalPassing++
    } else {
      item.passing = false
    }
  })
  return obj.passing
}

teams.forEach(team => {
  average(team)
  passing(team)
  console.log(`${team.name} stats\n--------------------
Average Score: ${team.average}`)
  team.scores.forEach(item => {
    console.log(`${item.player}: ${item.passing ? "pass" : "fail"}`)
  })
  console.log(`Total Passing Scores: ${team.totalPassing}\n\n`)
})
