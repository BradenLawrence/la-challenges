Re-create this fortune telling toy in JavaScript! Use the Mozilla Developer Network [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) on strings to help you out.

## Getting Started

```no-highlight
et get magic-8-ball-js
cd magic-8-ball-js
open index.html
atom .
```

### Work that Magic

Complete the following using the included `responses` array in `main.js`:

* Confirm the correct number of responses have been stored by printing the number to the console (`20`)
* Ask the user what their question is, and store it as a variable called `question`  
* Output a random response to the user's question
* Output the number of responses that include the word "yes"
* Output the number of responses that include the words "no" or "not"
* Output the alphabetized list of responses  
* Output the first and last responses from the alphabetized list  
* Delete two of the negative responses
* Reassign 'Ask again later' to the beginning of the array  
* Add 1 response of your choosing to the current list
* Concat an **array** of 3 additional responses to the current list  
* Confirm the correct number of responses have been removed and added by printing the number of responses to the console (`22`)

> Pro Tip: Use the following function to select a random index given the length of an array.

```no-highlight
// source http://stackoverflow.com/a/5915126/2675670

let randomIndex = (length) => {
  return Math.floor((Math.random() * length));
}
```
