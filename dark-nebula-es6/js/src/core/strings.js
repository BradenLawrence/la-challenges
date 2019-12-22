reduceString = (str, amount) => {
  let result = []
  const isNotRepeated = (letter) => {
    let last = result.length - 1
    for(let i = 0; i < amount; i++) {
      if(result[last - i] !== letter) {
        return true
      }
    }
    return false
  }
  str.split('').forEach(letter => {
    if(isNotRepeated(letter)) {
      result.push(letter)
    }
  })
  return result.join('')
};

reverseString = (str) => {
  let reversed = []
  let strArray = str.split('')
  for(let i = strArray.length - 1; i >= 0; i--) {
    reversed.push(strArray[i])
  }
  return reversed.join('')
};
