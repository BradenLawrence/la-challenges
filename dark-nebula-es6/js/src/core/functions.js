isPrime = (num) => {
  for(let i = 3; i < num; i++) {
    if(num % i === 0) {
      return false
    }
  }
  return true
};

arraySum = (array) => {
  return array.reduce( (total, current) => total += current)
};

fizzBuzz = (num) => {
  // write a function that receives a number as its argument;
  // if the number is divisible by 3, the function should return 'fizz';
  // if the number is divisible by 5, the function should return 'buzz';
  // if the number is divisible by 3 and 5, the function should return
  // 'fizzbuzz';
  //
  // otherwise the function should return the number, or null if no number
  // was provided or the value provided is not a number
  if(Number.isInteger(num)) {
    let result = ""
    if(num % 3 === 0) {
      result += "fizz"
    }
    if(num % 5 === 0) {
      result += "buzz"
    }
    if(result === "") {
      return num
    } else {
      return result
    }
  } else {
    return null
  }
};
