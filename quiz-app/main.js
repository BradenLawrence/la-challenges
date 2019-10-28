let team1 = {
  name: "JustJavaScript",
  scores: {
    Rami: 88,
    Natoya: 92,
    Max: 68,
    Lynn: 100
  }
}

let team2 = {
  name: "We Are Ruby",
  scores: {
    Sasha: 82,
    Mohammed: 98,
    Jennifer: 94,
    Denise: 92
  }
}

// * calculate the average score for each team and for both teams together
// * round the averages to the nearest integer for display
const average = (obj) => {
  let scores = Object.values(obj)
  return Math.floor(scores.reduce((total, current) => {
    return total += current
  }, 0) / scores.length)
}

console.log(average(team1.scores))
console.log(average(team2.scores))

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

console.log(passing(team1.scores))
console.log(passing(team2.scores))
