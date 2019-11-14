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
  # 1)
  # **In Precinct 1**
  # -Mary Sue got 218 votes
  # -Sally Jane got 455 votes
  # -Billy Joe got 185 votes
  #
  # **In Precinct 2**
  # -Mary Sue got 229 votes
  # -Sally Jane got 41 votes
  # -Billy Joe got 35 votes
  #
  # **In Precinct 3**
  # -Mary Sue got 297 votes
  # -Sally Jane got 423 votes
  # -Billy Joe got 488 votes
  #
  # **In Precinct 4**
  # -Mary Sue got 283 votes
  # -Sally Jane got 171 votes
  # -Billy Joe got 353 votes
puts "1)"
vote_results.each do |precinct, tallies|
  puts "**#{precinct}**"
  tallies.each do |candidate, votes|
    puts "-#{candidate} got #{votes} votes"
  end
  puts ""
end

  # 2) How many people voted in each precinct? Create a new hash where the keys name the precinct and the values start at 0. Iterate over the provided `vote_results` to update the totals.

  # 3) Which precinct had the highest voter turnout? Use the hash you created in Question 2 to return the answer.

  # 4) Output the total number of votes per candidate in the format seen above. Create a new hash where the keys name the candidate and the values start at 0. Iterate over the provided `vote_results` to update the totals.

  # 5) Who was the winning candidate in Precinct 4 and how many votes did they get?

  # 6) How many people voted in total?

  # 7) Who won the election and how many votes did they get? Use the hash you created in Question 4 to return the answer.

  # 8) How many more votes did the winner have as compared to the third place candidate? Use the hash you created in Question 4 and the winning candidate total votes value from Question 7 to complete this question.
