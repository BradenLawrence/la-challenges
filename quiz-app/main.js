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
let team1_scores = Object.values(team1.scores)
let team1_avg =  team1_scores.reduce((total, current) => {
  return total += current
}, 0) / team1_scores.length)


// * calculate the number of explorers passing the quiz (grade >= 70%)
