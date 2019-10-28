let teams = [
  team1 = {
    name: "JustJavaScript",
    scores: {
      Rami: 88,
      Natoya: 92,
      Max: 68,
      Lynn: 100
    }
  },
  team2 = {
    name: "We Are Ruby",
    scores: {
      Sasha: 82,
      Mohammed: 98,
      Jennifer: 94,
      Denise: 92
    }
  }
]

// * calculate the average score for each team and for both teams together
// * round the averages to the nearest integer for display
const average = (obj) => {
  let scores = Object.values(obj)
  return Math.floor(scores.reduce((total, current) => {
    return total += current
  }, 0) / scores.length)
}

// * calculate the number of explorers passing the quiz (grade >= 70%)
const passing = (obj) => {
  let scores = Object.values(obj)
  return Math.floor(scores.reduce((total, current) => {
    if(current >= 70) {
      return total += 1
    } else {
      return total
    }
  }, 0))
}

teams.forEach(team => {
  console.log(`${team.name} stats\n--------------------
Average Score: ${average(team.scores)}
Passing Scores: ${passing(team.scores)}\n\n`)
})
