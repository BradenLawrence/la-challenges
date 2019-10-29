let initial_quantity = 99,
    bottles = initial_quantity,
    plural = "s",
    excitement = ".",
    singing = true

while(singing) {
  let verse = ``
  let line1 = `${bottles} bottle${plural} of beer on the wall,\
 ${Number.isInteger(bottles) ? bottles : bottles.toLowerCase()} bottle${plural}\
 of beer${excitement}\n`
  verse += line1
  let line2 = null
  if(Number.isInteger(bottles)) {
    line2 = "Take one down and pass it around, "
  } else {
    line2 = "Go to the store and buy some more, "
    bottles = initial_quantity + 1
    singing = false
  }
  verse += line2
  bottles = bottles > 1 ? bottles - 1 : "No more"
  plural = bottles == 1 ? "" : "s"
  excitement = bottles % 10 == 0 ? "!" : "."

  let line3 = `${Number.isInteger(bottles) ? bottles : bottles.toLowerCase()}\
 bottle${plural} of beer on the wall.\n\n`
  verse += line3
  console.log(verse)
}
