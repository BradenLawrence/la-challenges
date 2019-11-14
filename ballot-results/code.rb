vote_results =
  {
    "Precinct 1" => {
      'Mary Sue' => 218,
      'Sally Jane' => 455,
      'Billy Joe' => 185
    },
    "Precinct 2" => {
      'Mary Sue' => 229,
      'Sally Jane' => 41,
      'Billy Joe' => 35
    },
    "Precinct 3" => {
      'Mary Sue' => 297,
      'Sally Jane' => 423,
      'Billy Joe' => 488
    },
    "Precinct 4" => {
      'Mary Sue' => 283,
      'Sally Jane' => 171,
      'Billy Joe' => 353
    }
  }

puts "1)"
vote_results.each do |precinct, tallies|
  puts "**#{precinct}**"
  tallies.each do |candidate, votes|
    puts "-#{candidate} got #{votes} votes"
  end
end

puts "2)"
precinct_totals = {
  "Precinct 1" => 0,
  "Precinct 2" => 0,
  "Precinct 3" => 0,
  "Precinct 4" => 0
}
vote_results.each do |precinct, tallies|
  tallies.each {|candidate, votes| precinct_totals[precinct] += votes}
end
precinct_totals.each do |precinct, total|
  puts "#{precinct} had #{total} votes."
end

puts "3)"
turnout_groups = precinct_totals.group_by {|precinct, total| total}
highest_turnout = turnout_groups.max.last.to_h
puts %W(#{highest_turnout.keys.join(" and ")}
        #{highest_turnout.size > 1 ? "are tied for most" : "had the most"}
        votes with #{highest_turnout.values[0]} votes.).join(" ")

puts "4)"
candidate_totals = {
  "Mary Sue" => 0,
  "Sally Jane" => 0,
  "Billy Joe" => 0,
}
vote_results.each do |precinct, tallies|
  tallies.each {|candidate, votes| candidate_totals[candidate] += votes}
end
candidate_totals.each do |candidate, total|
  puts "#{candidate} had #{total} votes"
end

puts "5)"
precinct_query = "Precinct 4"
query_groups = vote_results[precinct_query].group_by {|candidate, votes| votes}
query_winner = query_groups.max.last.to_h
query_winner_string = query_winner.keys.join(" and ")
puts %W(#{query_winner_string} #{query_winner.size > 1 ? "are tied in" : "won"}
        #{precinct_query} with #{query_winner.values[0]} votes.).join(" ")

puts "6)"
total_votes = precinct_totals.values.reduce(:+)
puts "In total, #{total_votes} people voted."

puts "7)"
result_groups = candidate_totals.group_by {|candidate, totals| totals}
winner = result_groups.max.last.to_h
winner_string = winner.keys.join(" and ")
puts %W(#{winner_string} #{winner.size > 1 ? "are tied" : "had the most votes"}
        with #{winner.values[0]} votes.).join(" ")

puts "8)"
last_place = result_groups.min.last.to_h
difference = winner.values[0] - last_place.values[0]
last_place_string = last_place.keys.join(" and ")
puts "#{winner_string} beat #{last_place_string} by #{difference} votes."
