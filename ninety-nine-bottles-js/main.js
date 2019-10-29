let initial_qty = 99

const lyric = (num) => {
  if(num > 0) {
    return num
  } else if(num === 0) {
    return "No more"
  } else {
    return initial_qty
  }
}

const plural = (num) => {
  if(num === 1) {
    return ""
  } else {
    return "s"
  }
}

const downcase = (lyric) => {
  if(Number.isInteger(lyric)) {
    return lyric
  } else {
    return lyric.toLowerCase()
  }
}

const excitement = (num) => {
  if(num % 10 === 0) {
    return "!"
  } else {
    return "."
  }
}

for(let i = initial_qty; i >= 0; i--) {
  let verse = ""
  let line1 = `${lyric(i)} bottle${plural(i)} of beer on the wall, \
${downcase(lyric(i))} bottle${plural(i)} of beer${excitement(lyric(i))}\n`
  verse += line1

  let line2 = ""
  if(i === lyric(i)) {
    line2 = "Take one down and pass it around, "
  } else {
    line2 = "Go to the store and buy some more, "
  }
  verse += line2

  let line3 = `${downcase(lyric(i-1))} bottle${plural(i-1)} of beer on \
the wall.\n\n`
  verse += line3
  console.log(verse)
}
