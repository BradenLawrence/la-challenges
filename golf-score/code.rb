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

# Total Strokes: 81
# Total Par: 72
# You were 9 over par.

total_strokes = scorecard.reduce(0) {|total, hole| total + hole[:strokes]}
puts "Total Strokes: #{total_strokes}"
