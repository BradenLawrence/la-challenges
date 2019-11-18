def print_puzzle(word, guess = [])
  word.split("").each do |letter|
    if guess.include? letter
      print letter
    else
      print "_"
    end
  end
  puts ""
end

print_puzzle("dogs", ["d","f","n","s"])
