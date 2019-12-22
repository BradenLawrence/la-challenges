containsNumber = (string) => {
  let regex = /.*[0-9].*/
  return regex.test(string)
};

containsRepeatingLetter = (string) => {
  let regex = /.*([A-Za-z])\1.*/
  return regex.test(string)
};

endsWithVowel = (string) => {
  let regex = /[AEIOUaeiou]$/
  return regex.test(string)
};

captureThreeNumbers = (string) => {
  let regex = /[0-9][0-9][0-9]/
  let result = string.match(regex)
  if(result !== null) {
    return result[0]
  }
  return false
};

matchesPattern = (string) => {
  let regex = /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/
  return regex.test(string)
};

isUSD = (string) => {
  let up_to_999_regex = /^\$([0-9]|[1-9][0-9]|[1-9][0-9][0-9])(\.[0-9]{2})?$/
  let thousand_plus_regex = /^\$(((([0-9]|[1-9][0-9]|[1-9][0-9][0-9]),)?)(?=([0-9]{3})))(((([0-9]{3}),)?)(?=([0-9]{3})))+([0-9]{3})(\.[0-9]{2})?$/
  return (up_to_999_regex.test(string) || thousand_plus_regex.test(string))
};
