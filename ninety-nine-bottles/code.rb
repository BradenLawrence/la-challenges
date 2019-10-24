bottles = 99
plural = "s"

while bottles>0 do
    excitement = bottles % 10 == 0 ? "!" : "."
    puts <<~VERSE1.squeeze(" ")
      #{bottles} bottle#{plural} of beer on the wall, #{bottles} \
      bottle#{plural} of beer#{excitement}
    VERSE1
    bottles -= 1
    plural = bottles == 1 ? "" : "s"
    puts <<~VERSE2.squeeze(" ")
      Take one down and pass it around, #{bottles} bottle#{plural} of beer on \
      the wall.\n
    VERSE2
end

puts <<~ENDING
  No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, 99 bottles of beer on the wall.
ENDING
