def greet(name)
  salutations = ["Hi","Yo","Hey","Howdy"]
  return "#{salutations.sample} #{name.upcase}!"
end

puts greet(gets.chomp)
