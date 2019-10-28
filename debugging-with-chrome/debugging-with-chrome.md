Part of learning to code is learning to *make* mistakes as well as how to fix them. Fortunately for us, we're provided with tools with which to explore the mistakes we make so we can debug the code we're working on.

## Learning Goals

* Explore a few of the debugging tools we have at our disposal
* Discover the go-to spot for online documentation

### Dev Tools  

No matter the browser you're using, Chrome, Firefox, Safari, etc, you will have an option to open up the developer tools and see what's going on under the hood. For Chrome and Firefox, you can open the dev tools by holding `Command + Option + j` or `Command + Option + i`, and for Safari, you hold `Command + Option + i`.

In Chrome, you will see a few options presented to you once your developer tools are open, all relating to the page you're currently looking at. Let's say we choose to have our developer tools dock at the bottom of our browser window by clicking the tiny 3-dot menu in the upper right and selecting "Dock to Bottom" under Dock Side. If you click on the `Elements` tab at the top of the Developer Tools, you'll see the HTML from the web page you're on. Try clicking around and expanding the arrows you see. What happens when you when you click on a div? You'll see that div become highlighted on the page itself, showing you which part of the page that HTML code is for. You will also see the styling associated with that HTML in the `Styles` tab in a separate box on the right. Clicking on the `Computed` tab in that right-hand section will show you the box model, if that's being used, including all padding, margin, and border. You will also see additional styling information about that highlighted div.

### The Inspector Tool

Developer tools provides us with another way to select elements on the page. In the top left corner of your dev tools, you should see an icon that looks like an arrow clicking a box.

By clicking on this `Inspector Tool`, you can use your mouse to select an area on the page itself, and your dev tools will hop over to that part in your HTML so you can explore the matching HTML that has been highlighted.

### Debugging in the Console

Let's move along and take a look at the `Console` tab from the top bar of the developer tools. The console acts as a virtual sandbox where you can perform mathematical calculations, view, modify, preview JS and styling by typing the changes directly into the console, and view diagnostic information. When you invoke the `console.log()` function, your passed in arguments are displayed in the console the way you'd expect to see them.

When you add a `debugger` on an empty line in your JavaScript code, your program will pause while loading at that location in your code and allow you to explore the current state of your application by calling various objects in the console. This becomes extremely helpful when your code has an error. By opening the dev tools and selecting console, you're able to read what those errors are and begin to problem solve. When you're ready to allow your program to move forward, you simply press play. Feel free to add as many debuggers to your code as you'd like - that's a great way to learn how your code is running and exactly where your errors live. Be sure to **remove** any and all debuggers when you're finished, so your code works when you run it in production!

Let's take a look at debugging in action. You may see some unfamiliar syntax here, but don't fret! It's just here to help our example along. You'll delve deeper into that content later in your learning. Code along by following these steps:

### Getting Started

```no-highlight
et get debugging-with-chrome
cd debugging-with-chrome
open index.html
atom main2.js
```

Below, we have the `affirmations` array containing several positive phrases:

```JavaScript
let affirmations = [
  'You are so amazing.',
  'I know you can do it.',
  'You rocked that.',
  'Bravo!',
  'Keep on keeping on.',
  'Whoa that looks great!'
]
```

And the code from our `main2.js` file:

```JavaScript
let mainDiv = document.getElementById('main')
affirmations.forEach(phrase => {
  mainDiv.innerHTML += `${phrase}  --  `
  console.log(phrase)
})
```

We have a program designed to print all the phrases in the `affirmations` array and display them both to the console and on our webpage. Let's load the page and see what we have:

![affirmation1](https://s3.amazonaws.com/horizon-production/images/affirmation1.png)

Everything looks good. We see the phrases displayed in both places. What if we wanted to take a deeper look at how the program was looping through the affirmations array? We can use our debugger tool to pause our code and dig around.

```JavaScript
let mainDiv = document.getElementById('main')
affirmations.forEach(phrase => {
  mainDiv.innerHTML += `${phrase}  --  `
  debugger
  console.log(phrase)
})
```

Save this and refresh the page with developer tools open.

The source tab will show allowing us to see _where_ in the code our debugger is.

![affirmationdebugger1](https://s3.amazonaws.com/horizon-production/images/affirmation_debugger1.png)

Once we hit that debugger, we can return the current value of `phrase` by typing `phrase` into the console and hitting enter.

![phrase1](https://s3.amazonaws.com/horizon-production/images/phrase1.png)

We can go back to our `source` tab and click play to move the debugger forward one loop.

![sourcearrow](https://s3.amazonaws.com/horizon-production/images/sourcearrow2.png)

If we enter `phrase` into the console again, we see a new value for phrase printed out.

![affirmationdebugger2](https://s3.amazonaws.com/horizon-production/images/phrase2.png)

We can repeat that process until the program loops through all the elements in the `affirmations` array, and finally, displays it all to the webpage.

![affirmationconsolelist](https://s3.amazonaws.com/horizon-production/images/affirmationconsolelist.png)

Hopefully, this helps you to understand how useful debuggers are!

### Mozilla Developer Network (MDN) Web Docs

What happens when we have a how-to question? Where do we turn when we aren't totally sure about syntax? Google will return any number of resources when you search for solutions. As your skills grow, so will your ability to differentiate a good answer from a less helpful one. Whenever you need clarity on a JavaScript challenge, we recommend you select the link provided by MDN first. Their docs are both clear and current. Spend some time digging around the site and bookmark the pages you find most useful! [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
