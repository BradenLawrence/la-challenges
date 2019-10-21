require 'pry'
puts "Golly, I sure love helping!"
input = nil
while input != "no" do
  puts "Is there anything I can get you? (enter 'no' if finished)"
  unless input == "no"
    input = gets.chomp
  end
  binding.pry
end
puts "k, bye!"
