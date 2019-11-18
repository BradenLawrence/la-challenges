def greet(name, language = "English")
  salutations = {
    "English" => "Hi",
    "Spanish" => "Hola",
    "Italian" => "Ciao",
    "Irken"   => "Doom de doom"
  }
    return "#{salutations[language]} #{name.upcase}!"
end

puts greet(gets.chomp)
