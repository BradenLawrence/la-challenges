Let's explore the use of some output methods in JavaScript.

## Learning Goals

* Invoke JavaScript functions that take and store user input
* Investigate side effects of JavaScript functions

## Getting Started

Open up the terminal and use the following instructions to get started.

```no-highlight
et get prep-js-input-and-output
cd prep-js-input-and-output  
open index.html
```  

You'll see your browser open a new tab which will display the contents of your `index.html` file. Don't worry too much about what's in there. Instead, direct your focus to working in the browser console and the contents of `main.js`.

 > clicking on the browser and pressing `cmd + option + j` will open the developer console
 > you can also right click on the page and click `Inspect`  

### Input

Consider Captain Zim, who wants to add his name as the leader of the upcoming space expedition. The variable `flightLeader` has been declared and has no value assigned, but Captain Zim has an excursion planned for tomorrow afternoon! Let's look at a couple of ways to change the value of `flightLeader` to his name.

In the `main.js` file, put the variable declaration on line 1.  

```javascript
let flightLeader
```  

We could manually go into our code and reassign flightLeader this way: `flightLeader = 'Captain Zim'`, but that doesn't let the Captain do the updating. Instead, let's give him a way to directly enter the new value. Using one of JavaScript's built in functions, we can prompt the Captain like this:

```javascript
prompt('Who is this excursion\'s flight leader?')
```

Copy the above code and paste it into your `main.js` file, then refresh your webpage. We see that our browser now prompts the user to enter the information we needed. Neat-o! Now, because #safetyfirst, we can update our code to take in a confirmation.

```javascript
prompt('Who is this excursion\'s flight leader?')
confirm('Are you sure this is the correct flight leader?')
```

Great! Now we can provide some **input** to our webpage using two different JavaScript functions. We don't have to worry about exactly how these work. For now, it's enough to know they're there when we need them.

One last thing, though: we are getting information from our user, but we haven't actually updated our `flightLeader` variable to store that information. In order to make sure we update `flightLeader` with our user's input, we will want to *update* our `prompt` line to reassign that variable:

```javascript
let flightLeader
flightLeader = prompt('Who is this excursion\'s flight leader?')
confirm('Are you sure this is the correct flight leader?')
```

### Output

What if we'd like some on screen confirmation on who the flight leader is going to be? JavaScript has another handy function `alert()` that can provide us with that information. Have you noticed that these functions all contain parentheses `()`? Functions can take in **arguments** (the input) and manipulate that data in order to **return** a value (the output). In the code below, the function `prompt()` is taking in the string `'Who is this excursion\'s flight leader?'` as the argument, and returning the value that is provided by the user. Let's use our `alert` function to get the output we want displayed on the page.

Add this code into your `main.js` file to see it in action.

```javascript
alert(`${flightLeader} is leading this excursion.`)
```

There we go! Here, `alert()` is taking in the variable `flightLeader` and interpolating it inside the string `' is leading this excursion.'` returning a full sentence to the user. To be more specific, The functions we called provided us with some **output**.

Finally, let's see our confirmation print out in the console. This is a very handy way to see what's going on in our programs. You can place a console.log() almost anywhere in your JavaScript files to see the value of a variable.

```javascript
console.log(`Today, your flight leader is ${flightLeader}`)
```

`console.log()` is a JavaScript method that you'll come to know and love. `console.log()` has no explicit return value, but it does produce a side effect. That side effect is the output in your console.

### Summary

In JavaScript, functions are what provide us with the ability to interact with a website. In this lesson, we've only scratched the surface of how functions work. For now, it's enough to understand that when we call a function, we provide **input** as arguments, and the return
value of the function is the **output**. Websites need to take data in and return information to the user, and JavaScript provides us with many ways to do so.
