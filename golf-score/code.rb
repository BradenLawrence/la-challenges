scorecard = [
  {par: 5, strokes: 7},
  {par: 4, strokes: 5},
  {par: 3, strokes: 3},
  {par: 4, strokes: 4},
  {par: 4, strokes: 4},
  {par: 3, strokes: 2},
  {par: 4, strokes: 5},
  {par: 5, strokes: 5},
  {par: 4, strokes: 5},
  {par: 5, strokes: 7},
  {par: 4, strokes: 4},
  {par: 4, strokes: 4},
  {par: 3, strokes: 3},
  {par: 4, strokes: 5},
  {par: 4, strokes: 5},
  {par: 4, strokes: 4},
  {par: 3, strokes: 3},
  {par: 5, strokes: 6}
]

total_strokes = scorecard.reduce(0) {|total, hole| total + hole[:strokes]}
puts "Total Strokes: #{total_strokes}"

total_par = scorecard.reduce(0) {|total, hole| total + hole[:par]}
puts "Total Par: #{total_par}"

score = total_strokes - total_par
results = {
  "a double eagle": -3,
  "an eagle":       -2,
  "a birdie":       -1,
  "a par score":     0,
  "a bogey":         1,
  "a double bogey":  2,
  "a triple bogey":  3
}
if results.values.include? score
  puts "You hit #{results.reverse[score]}!"
else
  puts "You hit #{score.abs} #{score > 0 ? 'over' : 'under'} par."
end
