initial_quantity = 99
bottles = initial_quantity
plural = "s"
excitement = "."
singing = true

while singing do
    verse1 =
      %W(#{bottles} bottle#{plural} of beer on the wall,
         #{bottles.is_a?(String) ? bottles.downcase : bottles} bottle#{plural}
         of beer#{excitement}).join(" ")
    puts verse1
    verse2 = nil
    if bottles.is_a?(Numeric)
      verse2 = "Take one down and pass it around, "
    else
      verse2 = "Go to the store and buy some more, "
      bottles = initial_quantity + 1
      singing = false
    end
    print verse2
    bottles = bottles > 1 ? bottles - 1 : "No more"
    plural = bottles == 1 ? "" : "s"
    excitement = bottles % 10 == 0 ? "!" : "."
    verse3 =
      %W(#{bottles.is_a?(String) ? bottles.downcase : bottles} bottle#{plural}
         of beer on the wall.\n\n).join(" ")
    print verse3
end
