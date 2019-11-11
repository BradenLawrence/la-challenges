REQUIRED_CREW_SIZE = 6

available_crew = [
  :captain,
  :first_mate,
  :second_mate,
  :navigator,
  :first_engineer,
  :info_systems_tech,
  :environmental_control_tech,
  :lead_maintenance,
  :first_medical,
  :first_food_ops,
  :combat_systems_officer
]

possible_crew_selections = available_crew.sample(REQUIRED_CREW_SIZE)

required_crew = [
  :captain,
  :navigator,
  :lead_maintenance
]

puts "Today's Test Flight Crew Roster:"

possible_crew_selections.each_with_index do |current_crew, index|
  puts "#{index+1}\) #{current_crew.to_s.gsub("_", " ")}"
end

puts ""

missing_crew = required_crew - possible_crew_selections

if missing_crew.length > 0
  puts %W(Warning, #{missing_crew.length} required crew
          role#{missing_crew.length > 1 ? "s are":" is"} unfilled:").join(" ")
  missing_crew.each_with_index do |crew, index|
    puts "#{index+1}\) #{crew.to_s.gsub("_", " ")}"
  end
end
