bottles = 99
excitement = nil

while bottles>0 do
  if bottles>1
    if bottles % 10 == 0
      excitement = "!"
    else
      excitement = "."
    end
    puts <<~LYRICS.squeeze(" ")
    #{bottles} bottles of beer on the wall, #{bottles} bottles of \
    beer#{excitement}
    Take one down and pass it around, #{bottles-1} bottles of beer on the wall.

    LYRICS
  else
    puts <<~LYRICS
    #{bottles} bottle of beer on the wall, #{bottles} bottle of beer.
    Take one down and pass it around. No more bottles of beer on the wall.

    LYRICS
  end
  bottles -= 1
end

puts <<~ENDING
  No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, 99 bottles of beer on the wall.
ENDING
