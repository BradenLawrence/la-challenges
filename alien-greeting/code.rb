def prompt(string)
  puts string
  return gets.chomp
end
def greet(name, language = "English")
  salutations = {
    "English" => "Hi",
    "Spanish" => "Hola",
    "Italian" => "Ciao",
    "Irken"   => "Doom de doom"
  }
    return "#{salutations[language]} #{name.upcase}!"
end

puts greet(
  prompt("What is your name?"),
  prompt("What is your language?")
)
