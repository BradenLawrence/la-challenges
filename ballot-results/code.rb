require 'pry'
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

  # 1) Generate the voting totals by Precinct and Candidate as shown in the directions.

puts "1)"
vote_results.each do |precinct, tallies|
  puts "**#{precinct}**"
  tallies.each do |candidate, votes|
    puts "-#{candidate} got #{votes} votes"
  end

end

  # 2) How many people voted in each precinct? Create a new hash where the keys name the precinct and the values start at 0. Iterate over the provided `vote_results` to update the totals.
precinct_totals = {
  "Precinct 1" => 0,
  "Precinct 2" => 0,
  "Precinct 3" => 0,
  "Precinct 4" => 0
}
vote_results.each do |precinct, tallies|
  tallies.each {|candidate, votes| precinct_totals[precinct] += votes}
end
puts "2)"
precinct_totals.each do |precinct, total|
  puts "#{precinct} had #{total} votes."
end

  # 3) Which precinct had the highest voter turnout? Use the hash you created in Question 2 to return the answer.
highest_turnout = precinct_totals.group_by {|precinct, total| total}
highest_turnout = highest_turnout.max.last.to_h
puts "3)"
if highest_turnout.size > 1
  puts "#{highest_turnout.keys.join(" and ")} are tied for most votes with \
#{highest_turnout.values[0]} votes each."
else
  puts "#{highest_turnout.keys[0]} had the most votes with \
#{highest_turnout.values[0]} votes."
end

  # 4) Output the total number of votes per candidate in the format seen above. Create a new hash where the keys name the candidate and the values start at 0. Iterate over the provided `vote_results` to update the totals.
candidate_totals = {
  "Mary Sue" => 0,
  "Sally Jane" => 0,
  "Billy Joe" => 0,
}
vote_results.each do |precinct, tallies|
  tallies.each {|candidate, votes| candidate_totals[candidate] += votes}
end
puts "4)"
candidate_totals.each do |candidate, total|
  puts "#{candidate} had #{total} votes"
end

  # 5) Who was the winning candidate in Precinct 4 and how many votes did they get?
precinct_query = "Precinct 4"
query_winner = vote_results[precinct_query].group_by {|candidate, votes| votes}
query_winner = query_winner.max.last.to_h
puts "5)"
if query_winner.size > 1
  puts "#{query_winner.keys.join(" and ")} are tied in #{precinct_query} with \
#{query_winner.values[0]} votes each."
else
  puts "#{query_winner.keys[0]} won #{precinct_query} with \
#{query_winner.values[0]} votes."
end

  # 6) How many people voted in total?
total_votes = precinct_totals.values.reduce(:+)
puts "6)"
puts "In total, #{total_votes} people voted."

  # 7) Who won the election and how many votes did they get? Use the hash you created in Question 4 to return the answer.
winner = candidate_totals.max_by {|candidate, totals| totals}
puts "7)"
puts "#{winner.first} had the most votes with #{winner.last} votes."

  # 8) How many more votes did the winner have as compared to the third place candidate? Use the hash you created in Question 4 and the winning candidate total votes value from Question 7 to complete this question.
# Sally Jane beat Mary Sue by 63 votes.
